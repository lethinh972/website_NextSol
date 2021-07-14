package vn.nextsol.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import vn.nextsol.entity.Event;

public interface EventRepository extends JpaRepository<Event, Long>{
	@Query("SELECT p FROM Event p where "
			+ "CONCAT(p.name)"
			+ " like %?1%")
	public Page<Event> findEventByName(String keyword,Pageable pageable);
}
