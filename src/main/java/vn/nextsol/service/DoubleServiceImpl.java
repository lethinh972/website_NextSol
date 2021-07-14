package vn.nextsol.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import vn.nextsol.entity.Services;
import vn.nextsol.repository.ServiceRepository;
@Service
public class DoubleServiceImpl implements DoubleService{

	
	@Autowired
	private ServiceRepository serviceRepository;
	@Override
	public Iterable<Services> findAllService() {
		// TODO Auto-generated method stub
		return serviceRepository.findAll();
	}


	@Override
	public Services findOneService(long id) {
		// TODO Auto-generated method stub
		return serviceRepository.findById(id).get();
	}

	@Override
	public void saveService(Services service) {
		// TODO Auto-generated method stub
		serviceRepository.save(service);
	}

	@Override
	public void deleteService(Services service) {
		// TODO Auto-generated method stub
		serviceRepository.delete(service);
	}

	@Override
	public List<Services> search3Service() {
		// TODO Auto-generated method stub
		return serviceRepository.find3Service();
	}

	@Override
	public Services searchInfoService(long id) {
		// TODO Auto-generated method stub
		return serviceRepository.findById(id).get();
	}


	@Override
	public Page<Services> getServicesByName(int pageNumber, String sortField, String sortDir, String keyword) {
		Sort sort=Sort.by(sortField);
		sort=sortDir.equals("asc") ? sort.ascending() : sort.descending();
		
		Pageable pageable =PageRequest.of(pageNumber-1, 8,sort);
		if(keyword!=null) {
			return serviceRepository.findServicesByName(keyword, pageable);
						}
			return serviceRepository.findAll(pageable);
	}
	}

