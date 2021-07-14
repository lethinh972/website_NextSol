package vn.nextsol.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import vn.nextsol.entity.Services;

public interface ServiceRepository extends JpaRepository<Services, Long>{
	@Query("SELECT p FROM Services p where "
			+ "CONCAT(p.service_name)"
			+ " like %?1%")
	public Page<Services> findServicesByName(String keyword,Pageable pageable);
	
	@Query(value="select * FROM Services where is_highlight=1 limit 3",nativeQuery = true)
	List<Services> find3Service();
}
