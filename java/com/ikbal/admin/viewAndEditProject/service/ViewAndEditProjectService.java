package com.ikbal.admin.viewAndEditProject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ikbal.admin.createProject.dto.CreateProjectDTO;
import com.ikbal.admin.viewAndEditProject.dao.ViewAndEditProjectDAO;

@Service
public class ViewAndEditProjectService {
	@Autowired
	ViewAndEditProjectDAO viewandeditProjectDao;

	public ViewAndEditProjectService() {
		System.out.println(this.getClass().getSimpleName() + "created");
	}

	public int updateProjectStatus(CreateProjectDTO createprojectDTO) {
		System.out.println("updateProjectStatus method Inside Service started ");
		System.out.println("updateProjectStatus method returning  to dao");

		return viewandeditProjectDao.updateProjectStatus(createprojectDTO);
		
	
	}
}
