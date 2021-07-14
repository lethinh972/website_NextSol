package vn.nextsol.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import vn.nextsol.entity.User;
import vn.nextsol.repository.UserRepository;

public class UserDetailsServiceImpl implements UserDetailsService{
	@Autowired
	private UserRepository userRepository;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user =userRepository.getUserByUsername(username);
		if(user==null) {
			throw new UsernameNotFoundException("khong the tim thay tai khoan nguoi dung");
		}
		return new MyUserDetails(user);
	}
	
}
