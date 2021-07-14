package vn.nextsol.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import vn.nextsol.entity.CustomerComment;
import vn.nextsol.repository.CustomerCommentRepository;
@Service
public class CustomerCommentServiceImpl implements CustomerCommentService{
	@Autowired
	private CustomerCommentRepository customerCommentRepository;

	@Override
	public Iterable<CustomerComment> findAllCustomerComment() {
		// TODO Auto-generated method stub
		return customerCommentRepository.findAll();
	}



	@Override
	public CustomerComment findOneCustomerComment(long id) {
		// TODO Auto-generated method stub
		return customerCommentRepository.findById(id).get();
	}

	@Override
	public void saveCustomerComment(CustomerComment customerComment) {
		// TODO Auto-generated method stub
		customerCommentRepository.save(customerComment);
	}

	@Override
	public void deleteCustomerComment(CustomerComment customerComment) {
		// TODO Auto-generated method stub
		customerCommentRepository.delete(customerComment);
	}

	@Override
	public List<CustomerComment> search3() {
		return customerCommentRepository.find3Comment();
	}



	@Override
	public Page<CustomerComment> getCustomerCommentByName(int pageNumber, String sortField, String sortDir,
			String keyword) {
		Sort sort=Sort.by(sortField);
		sort=sortDir.equals("asc") ? sort.ascending() : sort.descending();
		
		Pageable pageable =PageRequest.of(pageNumber-1, 8,sort);
		if(keyword!=null) {
			return customerCommentRepository.findCommentByName(keyword, pageable);
						}
			return customerCommentRepository.findAll(pageable);
	}
	}

