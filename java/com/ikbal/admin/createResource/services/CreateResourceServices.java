package com.ikbal.admin.createResource.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;

import com.ikbal.admin.createResource.dao.CreateResourceDAO;
import com.ikbal.admin.createResource.dto.CreateResourceDTO;

@Service
public class CreateResourceServices {
	@Autowired
	private CreateResourceDAO createResourceDAO;
	@Autowired
	private SimpleMailMessage message;
	@Autowired
	private JavaMailSenderImpl mailSender;

	public CreateResourceServices() {
		System.out.println(this.getClass().getSimpleName() + "Created...");
	}

	

	public void createResourceServices(CreateResourceDTO createResourceDTO) {
		System.out.println("Create Resource Srevice Started.. ");

		message.setTo(createResourceDTO.getEmail());
		message.setSubject("Toufique's Pratice Project");
		message.setText(
				"Congratulations!,You became a Part of Cimexa \n\n this to inform you are assign for my project Cimexa \n\n ur user nme is :"
						+ createResourceDTO.getEmail() + "and passWord is : " + createResourceDTO.getRpassword());

		mailSender.send(message);

		createResourceDAO.saveResourceDetails(createResourceDTO);

		System.out.println("Create Resource Srevice Ended.. ");
	}

	public void updateservice(CreateResourceDTO createResourceDTO) {
		System.out.println("update service method started inside UpdateResourceService");

		createResourceDAO.update(createResourceDTO);

		System.out.println("update service method ended inside UpdateResourceService");

	}

	public List<CreateResourceDTO> viewResourceService() {
		return createResourceDAO.viewResourceDAO();
	}

	public List<String> getProjectNameService() {
		return createResourceDAO.getProjectNameDao();

	}

}
