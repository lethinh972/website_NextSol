package vn.nextsol.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import vn.nextsol.entity.CustomerComment;

public interface CustomerCommentRepository extends JpaRepository<CustomerComment, Long>{
	@Query("SELECT p FROM CustomerComment p where "
			+ "CONCAT(p.name,' ',p.company,' ',p.comment)"
			+ " like %?1%")
	public Page<CustomerComment> findCommentByName(String keyword,Pageable pageable);
	
	@Query(value = "select * from customer_comment  where is_highlight='1' limit 3",nativeQuery = true)
	List<CustomerComment> find3Comment();
}
