package vn.nextsol.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import vn.nextsol.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {
	@Query("SELECT p FROM User p where " + "CONCAT(p.username)" + " like %?1% and valid=1")
	public Page<User> findUserByName(String keyword, Pageable pageable);

	@Query("SELECT u FROM User u WHERE u.username=:username and valid=1")
	public User getUserByUsername(@Param("username") String username);
	
	@Query("SELECT u FROM User u WHERE u.valid=1")
	public Page<User> findAll(Pageable pageable);
	
	@Query("SELECT u FROM User u WHERE u.email=:email")
	public User checkmail(@Param("email") String email);
	
	@Query("SELECT u FROM User u WHERE u.username=:username")
	public User checkusername(@Param("username") String username);
}
