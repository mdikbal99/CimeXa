package com.ikbal.resource.service;
import java.util.List;
import java.util.Random;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;

import com.ikbal.admin.createProject.dto.CreateProjectDTO;
import com.ikbal.admin.createResource.dto.CreateResourceDTO;
import com.ikbal.resource.dao.ResDAO;
import com.ikbal.resource.dto.IssueDTO;

@Service
public class ResService {
	@Autowired
	private ResDAO dao;
	@Autowired
	private SimpleMailMessage message;
	@Autowired
	private JavaMailSenderImpl senderImpl;

	public ResService() {
	System.out.println(this.getClass().getSimpleName()+"\t created...");
	}
	
	
	
	public List<CreateProjectDTO> getProjectListService()
	{
		return dao.getProjectListDAO();
	}
	
	public List<CreateResourceDTO> getResourceService()
	{
		return dao.getResourceDAO();
	}
	
	public void createIssueService(IssueDTO dto)
	{
		dao.createIssueDAO(dto);
	}
	
	public List<IssueDTO> viewIssueService()
	{
		return dao.viewIssueDAO();
	}
	

	public IssueDTO searchIssueService(String issueno) {
		
		return dao.searchIssueDAO(issueno);
	}

	public void updateIssueStatusService(String status, int id) {
		dao.updateIssueStatusDAO(status,id);
		
	}
	
	
	public String issueGenerator()
	{
		
		String num = "0123456789";
		Random random = new Random();
		char key[] = new char[6];
		for (int i = 0; i <key.length; i++)
		{
			key[i] = num.charAt(random.nextInt(num.length()));
		}
		String issueNo=new String(key);
		String s2="ISS"+issueNo;
		return s2;
		
	}
	
	public void sendMailToEmployee(IssueDTO dto) {
		message.setTo(dto.getResourceEmail());
		message.setSubject("Project Notification");
		message.setText("Your project has occured one issue with issueNumber:"+dto.getIssueNo());
		senderImpl.send(message);
		System.out.println("mail is sended");
	}
}
