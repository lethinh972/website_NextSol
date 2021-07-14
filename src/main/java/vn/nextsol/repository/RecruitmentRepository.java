package vn.nextsol.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import vn.nextsol.entity.Recruitment;

public interface RecruitmentRepository extends JpaRepository<Recruitment, Long>{
	@Query("SELECT p FROM Recruitment p where "
			+ "CONCAT(p.job_name,' ',p.type,' ',p.salary,' ',p.experience)"
			+ " like %?1%")
	public Page<Recruitment> findRecruitmentByName(String keyword,Pageable pageable);
}
