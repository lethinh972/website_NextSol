package vn.nextsol.service;

import org.springframework.data.domain.Page;

import vn.nextsol.entity.Awards;

public interface AwardService {
	Iterable<Awards> findAllAwards();
	Page<Awards> getAwardsByName(int pageNumber,String sortField,String sortDir,String keyword);

    Awards findOneAwards(long id);

    void saveAwards(Awards awards);

    void deleteAwards(Awards awards);
   
}
