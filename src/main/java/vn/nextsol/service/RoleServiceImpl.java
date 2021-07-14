package vn.nextsol.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.nextsol.entity.Role;
import vn.nextsol.repository.RoleRepository;
@Service
public class RoleServiceImpl implements RoleService{

	@Autowired
	private RoleRepository roleRepository;


	@Override
	public void saveRole(Role role) {
		roleRepository.save(role);
		}

	

}
