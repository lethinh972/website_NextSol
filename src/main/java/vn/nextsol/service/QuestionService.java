package vn.nextsol.service;

import java.util.List;

import org.springframework.data.domain.Page;

import vn.nextsol.entity.Question;

public interface QuestionService {
	List<Question> findAllQuestion();

	Page<Question> getQuestionByName(int pageNumber,String sortField,String sortDir,String keyword);
    Question findOneQuestion(long id);

    void saveQuestion(Question question);

    void deleteQuestion(Question question);
    
}
