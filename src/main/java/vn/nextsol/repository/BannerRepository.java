package vn.nextsol.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import vn.nextsol.entity.Banner;

public interface BannerRepository extends JpaRepository<Banner, Long>{
	@Query("SELECT p FROM Banner p where "
			+ "CONCAT(p.name)"
			+ " like %?1%")
	public Page<Banner> findBannerByName(String keyword,Pageable pageable);
	
	@Query(value = "select * from banner where is_highlight=1",nativeQuery = true)
	List<Banner> findBannerHighLight();
}





