package vn.nextsol.service;

import org.springframework.data.domain.Page;

import vn.nextsol.entity.User;

public interface UserService {
	Page<User> getUserByName(int pageNumber,String sortField,String sortDir,String keyword);
    
    User findOne(long id);
    
    User chechMail(String email);
    
    User checkU(String username);
    
    void save(User user);
    
    void update(User user);

    void delete(User user);
}
