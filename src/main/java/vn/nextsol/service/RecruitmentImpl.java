package vn.nextsol.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import vn.nextsol.entity.Recruitment;
import vn.nextsol.repository.RecruitmentRepository;

@Service
public class RecruitmentImpl implements RecruitmentService{
	@Autowired
	private RecruitmentRepository recruitmentRepository;

	@Override
	public Iterable<Recruitment> findAllRecruitment() {
		// TODO Auto-generated method stub
		return recruitmentRepository.findAll();
	}



	@Override
	public Recruitment findOneRecruitment(long id) {
		// TODO Auto-generated method stub
		return recruitmentRepository.findById(id).get();
	}

	@Override
	public void saveRecruitment(Recruitment recruitment) {
		// TODO Auto-generated method stub
		recruitmentRepository.save(recruitment);
	}

	@Override
	public void deleteRecruitment(Recruitment recruitment) {
		// TODO Auto-generated method stub
		recruitmentRepository.delete(recruitment);
	}

	@Override
	public Recruitment RecruitmentDetail(long id) {
		// TODO Auto-generated method stub
		return recruitmentRepository.findById(id).get();
	}



	@Override
	public Page<Recruitment> getRecruitmentByName(int pageNumber, String sortField, String sortDir, String keyword) {
		Sort sort=Sort.by(sortField);
		sort=sortDir.equals("asc") ? sort.ascending() : sort.descending();
		
		Pageable pageable =PageRequest.of(pageNumber-1, 8,sort);
		if(keyword!=null) {
			return recruitmentRepository.findRecruitmentByName(keyword, pageable);
						}
			return recruitmentRepository.findAll(pageable);
	}
	}

