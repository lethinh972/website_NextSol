package vn.nextsol.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import vn.nextsol.entity.Product;
import vn.nextsol.repository.ProductRepository;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductRepository productRepository;

	@Override
	public Iterable<Product> findAllProduct() {
		return productRepository.findAll();
	}

	@Override
	public Product findOneProduct(long id) {
		return productRepository.findById(id).get();
	}

	@Override
	public void saveProduct(Product product) {
		productRepository.save(product);
	}

	@Override
	public void deleteProduct(Product product) {
		productRepository.delete(product);
	}



	@Override
	public Page<Product> getUserByName(int pageNumber, String sortField, String sortDir, String keyword) {
		Sort sort=Sort.by(sortField);
		sort=sortDir.equals("asc") ? sort.ascending() : sort.descending();
		
		Pageable pageable =PageRequest.of(pageNumber-1, 8,sort);
		if(keyword!=null) {
			return productRepository.findProductByName(keyword, pageable);
						}
			return productRepository.findAll(pageable);
	}

	
	

	
}
