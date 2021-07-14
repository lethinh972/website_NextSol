package vn.nextsol.service;

import java.util.List;

import org.springframework.data.domain.Page;

import vn.nextsol.entity.Services;

public interface DoubleService {
	Iterable<Services> findAllService();

	Page<Services> getServicesByName(int pageNumber,String sortField,String sortDir,String keyword);
    List<Services> search3Service();
    
    Services searchInfoService(long id);

    Services findOneService(long id);

    void saveService(Services service);

    void deleteService(Services service);
    
}
