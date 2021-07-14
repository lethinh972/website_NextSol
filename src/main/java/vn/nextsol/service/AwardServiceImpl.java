package vn.nextsol.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import vn.nextsol.entity.Awards;
import vn.nextsol.repository.AwardsRepository;
@Service
public class AwardServiceImpl implements AwardService {
	@Autowired
	private AwardsRepository awardsRepository;

	@Override
	public Iterable<Awards> findAllAwards() {
		return awardsRepository.findAll();
	}



	@Override
	public Awards findOneAwards(long id) {
		return awardsRepository.findById(id).get();
	}

	@Override
	public void saveAwards(Awards awards) {
		awardsRepository.saveAndFlush(awards);
	}

	@Override
	public void deleteAwards(Awards awards) {
		awardsRepository.delete(awards);
	}



	@Override
	public Page<Awards> getAwardsByName(int pageNumber, String sortField, String sortDir, String keyword) {
		Sort sort=Sort.by(sortField);
		sort=sortDir.equals("asc") ? sort.ascending() : sort.descending();
		
		Pageable pageable =PageRequest.of(pageNumber-1, 8,sort);
		if(keyword!=null) {
			return awardsRepository.findAwardsByName(keyword, pageable);
						}
			return awardsRepository.findAll(pageable);
	}

}
