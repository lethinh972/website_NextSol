package vn.nextsol.service;

import org.springframework.data.domain.Page;

import vn.nextsol.entity.Recruitment;

public interface RecruitmentService {
	Iterable<Recruitment> findAllRecruitment();

	Page<Recruitment> getRecruitmentByName(int pageNumber,String sortField,String sortDir,String keyword);
    Recruitment RecruitmentDetail(long id);

    Recruitment findOneRecruitment(long id);

    void saveRecruitment(Recruitment recruitment);

    void deleteRecruitment(Recruitment recruitment);
    
}
