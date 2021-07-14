package vn.nextsol.service;

import org.springframework.data.domain.Page;

import vn.nextsol.entity.Event;

public interface EventService {
	Iterable<Event> findAllEvent();
	Page<Event> getEventByName(int pageNumber,String sortField,String sortDir,String keyword);

    Event findOneEvent(long id);

    void saveEvent(Event event);

    void deleteEvent(Event event);
    
}
