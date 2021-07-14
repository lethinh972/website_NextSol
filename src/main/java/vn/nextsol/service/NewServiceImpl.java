package vn.nextsol.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import vn.nextsol.entity.News;
import vn.nextsol.repository.NewsRepository;
@Service
public class NewServiceImpl implements NewService{
	@Autowired
	private NewsRepository newsRepository;

	@Override
	public Iterable<News> findAllNews() {
		return newsRepository.findAll();
	}



	@Override
	public News findOneNews(long id) {
		return newsRepository.findById(id).get();
	}

	@Override
	public void saveNews(News news) {
		newsRepository.save(news);
	}

	@Override
	public void deleteNews(News news) {
		newsRepository.delete(news);
	}

	@Override
	public List<News> search3News() {
		return newsRepository.find3News();
	}



	@Override
	public Page<News> getNewsByName(int pageNumber, String sortField, String sortDir, String keyword) {
		Sort sort=Sort.by(sortField);
		sort=sortDir.equals("asc") ? sort.ascending() : sort.descending();
		
		Pageable pageable =PageRequest.of(pageNumber-1, 8,sort);
		if(keyword!=null) {
			return newsRepository.findNewsByName(keyword, pageable);
						}
			return newsRepository.findAll(pageable);
	}
	}


