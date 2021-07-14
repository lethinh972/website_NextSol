package vn.nextsol.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import vn.nextsol.entity.Event;
import vn.nextsol.repository.EventRepository;

@Service
public class EventServiceImpl implements EventService{
	@Autowired
	private EventRepository eventRepository;

	@Override
	public Iterable<Event> findAllEvent() {
		// TODO Auto-generated method stub
		return eventRepository.findAll();
	}



	@Override
	public Event findOneEvent(long id) {
		// TODO Auto-generated method stub
		return eventRepository.findById(id).get();
	}

	@Override
	public void saveEvent(Event event) {
		// TODO Auto-generated method stub
		eventRepository.save(event);
	}

	@Override
	public void deleteEvent(Event event) {
		// TODO Auto-generated method stub
		eventRepository.delete(event);
	}



	@Override
	public Page<Event> getEventByName(int pageNumber, String sortField, String sortDir, String keyword) {
		Sort sort=Sort.by(sortField);
		sort=sortDir.equals("asc") ? sort.ascending() : sort.descending();
		
		Pageable pageable =PageRequest.of(pageNumber-1, 8,sort);
		if(keyword!=null) {
			return eventRepository.findEventByName(keyword, pageable);
						}
			return eventRepository.findAll(pageable);
	}
	}


