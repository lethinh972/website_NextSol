package vn.nextsol.service;

import java.util.List;

import org.springframework.data.domain.Page;

import vn.nextsol.entity.HRpolicies;

public interface HRpoliciesService {
	List<HRpolicies> findAllHRpolicies();

	Page<HRpolicies> getHRpoliciesByName(int pageNumber,String sortField,String sortDir,String keyword);
    List<HRpolicies> search5HRpolicies();

    HRpolicies findOneHRpolicies(long id);

    void saveHRpolicies(HRpolicies hrpolicies);

    void deleteHRpolicies(HRpolicies hrpolicies);
    
}
