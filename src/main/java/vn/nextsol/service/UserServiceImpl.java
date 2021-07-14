package vn.nextsol.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import vn.nextsol.entity.User;
import vn.nextsol.repository.UserRepository;
@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserRepository userRepository;
	



	@Override
	public User findOne(long id) {
		return userRepository.findById(id).get();
	}

	@Override
	public void save(User user) {
		userRepository.save(user);
		
	}

	@Override
	public void delete(User user) {
		userRepository.saveAndFlush(user);
	}
	
	@Override
	public Page<User> getUserByName(int pageNumber, String sortField, String sortDir, String keyword) {
		Sort sort=Sort.by(sortField);
		sort=sortDir.equals("asc") ? sort.ascending() : sort.descending();
		
		Pageable pageable =PageRequest.of(pageNumber-1, 8,sort);
		if(keyword!=null) {
			return userRepository.findUserByName(keyword, pageable);
						}
			return userRepository.findAll(pageable);
	}


	@Override
	public void update(User user) {
		userRepository.saveAndFlush(user);
	}

	@Override
	public User chechMail(String email) {
		return userRepository.checkmail(email);
	}

	@Override
	public User checkU(String username) {
		return userRepository.checkusername(username);
	}

	}
