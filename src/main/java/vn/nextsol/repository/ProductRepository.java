package vn.nextsol.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import vn.nextsol.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Long>{
	@Query("SELECT a FROM Product a where "
			+ "CONCAT(a.name,' ',a.description)"
			+ " like %?1%")
	public Page<Product> findProductByName(String keyword,Pageable pageable);
}
