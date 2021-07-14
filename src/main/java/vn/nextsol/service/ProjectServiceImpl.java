package vn.nextsol.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import vn.nextsol.entity.Project;
import vn.nextsol.repository.ProjectRepository;
@Service
public class ProjectServiceImpl implements ProjectService{
	@Autowired
	private ProjectRepository projectRepository;

	@Override
	public Iterable<Project> findAllProject() {
		return projectRepository.findAll();
	}



	@Override
	public Project findOneProject(long id) {
		return projectRepository.findById(id).get();
	}

	@Override
	public void saveProject(Project project) {
		projectRepository.save(project);
	}

	@Override
	public void deleteProject(Project project) {
		projectRepository.delete(project);
	}

	@Override
	public List<Project> search10Project() {
		return projectRepository.find10Project();
	}

	@Override
	public Project searchPro(long id) {
		// TODO Auto-generated method stub
		return projectRepository.findById(id).get();
	}


	@Override
	public Page<Project> getProjectByName(int pageNumber, String sortField, String sortDir, String keyword) {
		Sort sort=Sort.by(sortField);
		sort=sortDir.equals("asc") ? sort.ascending() : sort.descending();
		
		Pageable pageable =PageRequest.of(pageNumber-1, 8,sort);
		if(keyword!=null) {
			return projectRepository.findProjectByName(keyword, pageable);
						}
			return projectRepository.findAll(pageable);
	}
	}

