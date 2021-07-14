package vn.nextsol.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import vn.nextsol.entity.News;

public interface NewsRepository extends JpaRepository<News, Long>{
	@Query("SELECT p FROM News p where "
			+ "CONCAT(p.name)"
			+ " like %?1%")
	public Page<News> findNewsByName(String keyword,Pageable pageable);
	
	@Query(value = "select * From News where is_highlight=1 limit 9",nativeQuery = true)
	List<News> find3News();
}
