package vn.nextsol.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import vn.nextsol.entity.HRpolicies;
import vn.nextsol.repository.HRpoliciesRepository;
@Service
public class HRpoliciesServiceImpl implements HRpoliciesService{
	@Autowired
	private HRpoliciesRepository hrpoliciesRepository;



	@Override
	public HRpolicies findOneHRpolicies(long id) {
		return hrpoliciesRepository.findById(id).get();
	}

	@Override
	public void saveHRpolicies(HRpolicies hrpolicies) {
		hrpoliciesRepository.save(hrpolicies);
	}

	@Override
	public void deleteHRpolicies(HRpolicies hrpolicies) {
		hrpoliciesRepository.delete(hrpolicies);
	}

	@Override
	public List<HRpolicies> findAllHRpolicies() {
		return hrpoliciesRepository.findAll();
	}



	@Override
	public List<HRpolicies> search5HRpolicies() {
		return hrpoliciesRepository.find5HRpolicies();
	}

	@Override
	public Page<HRpolicies> getHRpoliciesByName(int pageNumber, String sortField, String sortDir, String keyword) {
		Sort sort=Sort.by(sortField);
		sort=sortDir.equals("asc") ? sort.ascending() : sort.descending();
		
		Pageable pageable =PageRequest.of(pageNumber-1, 8,sort);
		if(keyword!=null) {
			return hrpoliciesRepository.findHRByName(keyword, pageable);
						}
			return hrpoliciesRepository.findAll(pageable);
	}
	}


	
