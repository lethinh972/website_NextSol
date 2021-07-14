package vn.nextsol.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import vn.nextsol.entity.Project;

public interface ProjectRepository extends JpaRepository<Project, Long>{
	@Query("SELECT p FROM Project p where "
			+ "CONCAT(p.name)"
			+ " like %?1%")
	public Page<Project> findProjectByName(String keyword,Pageable pageable);
	
	@Query(value="select * FROM projects limit 10",nativeQuery = true)
	List<Project> find10Project();
}
