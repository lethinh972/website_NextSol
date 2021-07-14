package vn.nextsol.service;

import java.util.List;

import org.springframework.data.domain.Page;

import vn.nextsol.entity.Project;

public interface ProjectService {
	Iterable<Project> findAllProject();

	Page<Project> getProjectByName(int pageNumber,String sortField,String sortDir,String keyword);
    List<Project> search10Project();
    
    Project searchPro(long id);

    Project findOneProject(long id);

    void saveProject(Project project);

    void deleteProject(Project project);
    
}
