package vn.nextsol.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import vn.nextsol.entity.Question;
import vn.nextsol.repository.QuestionRepository;
@Service
public class QuestionServiceImpl implements QuestionService{

	
	@Autowired
	private QuestionRepository questionRepository;
	
	@Override
	public List<Question> findAllQuestion() {
		return questionRepository.findAll();
	}



	@Override
	public Question findOneQuestion(long id) {
		return questionRepository.findById(id).get();
	}

	@Override
	public void saveQuestion(Question question) {
		questionRepository.save(question);
	}

	@Override
	public void deleteQuestion(Question question) {
		questionRepository.delete(question);
	}





	@Override
	public Page<Question> getQuestionByName(int pageNumber, String sortField, String sortDir, String keyword) {
		Sort sort=Sort.by(sortField);
		sort=sortDir.equals("asc") ? sort.ascending() : sort.descending();
		
		Pageable pageable =PageRequest.of(pageNumber-1, 8,sort);
		if(keyword!=null) {
			return questionRepository.findQuestionByName(keyword, pageable);
						}
			return questionRepository.findAll(pageable);
	}
	}


