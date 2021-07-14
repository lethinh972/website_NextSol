package vn.nextsol.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import vn.nextsol.entity.HRpolicies;

public interface HRpoliciesRepository extends JpaRepository<HRpolicies, Long>{
	@Query("SELECT p FROM HRpolicies p where "
			+ "CONCAT(p.title)"
			+ " like %?1%")
	public Page<HRpolicies> findHRByName(String keyword,Pageable pageable);
	
	@Query(value = "select * From hrpolicies where is_highlight=1 limit 5",nativeQuery = true)
	List<HRpolicies> find5HRpolicies();
}
