package vn.nextsol.service;

import org.springframework.data.domain.Page;

import vn.nextsol.entity.Product;

public interface ProductService {
	Iterable<Product> findAllProduct();
	
	Page<Product> getUserByName(int pageNumber,String sortField,String sortDir,String keyword);

    Product findOneProduct(long id);

    void saveProduct(Product product);

    void deleteProduct(Product product);
    
}
