package vn.nextsol.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import vn.nextsol.entity.Awards;

public interface AwardsRepository extends JpaRepository<Awards,Long>{
	@Query("SELECT p FROM Awards p where "
			+ "CONCAT(p.name)"
			+ " like %?1%")
	public Page<Awards> findAwardsByName(String keyword,Pageable pageable);
}
