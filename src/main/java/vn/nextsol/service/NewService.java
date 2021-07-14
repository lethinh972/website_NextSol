package vn.nextsol.service;

import java.util.List;

import org.springframework.data.domain.Page;

import vn.nextsol.entity.News;

public interface NewService {
	Iterable<News> findAllNews();
	Page<News> getNewsByName(int pageNumber,String sortField,String sortDir,String keyword);
    
    List<News> search3News();

    News findOneNews(long id);

    void saveNews(News news);

    void deleteNews(News news);
    
}
