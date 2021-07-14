package vn.nextsol.service;

import java.util.List;

import org.springframework.data.domain.Page;

import vn.nextsol.entity.CustomerComment;

public interface CustomerCommentService {
	Iterable<CustomerComment> findAllCustomerComment();
	Page<CustomerComment> getCustomerCommentByName(int pageNumber,String sortField,String sortDir,String keyword);
    
    List<CustomerComment> search3();

    CustomerComment findOneCustomerComment(long id);

    void saveCustomerComment(CustomerComment customerComment);

    void deleteCustomerComment(CustomerComment customerComment);
    
}
