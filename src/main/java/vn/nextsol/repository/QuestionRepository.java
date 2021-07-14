package vn.nextsol.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import vn.nextsol.entity.Question;

public interface QuestionRepository extends JpaRepository<Question, Long>{
	@Query("SELECT p FROM Question p where "
			+ "CONCAT(p.name)"
			+ " like %?1%")
	public Page<Question> findQuestionByName(String keyword,Pageable pageable);
}
