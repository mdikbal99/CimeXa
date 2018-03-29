package com.ikbal.resource.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ikbal.resource.dao.LoginDAO;

@Service
public class LoginServices 
{
	@Autowired
	private LoginDAO loginDAO;
	
	public LoginServices() 
	{
	System.out.println(this.getClass().getSimpleName()+"Created...");
	}
	
	
	public boolean resourceLoginService(String name, String password)
	{
		return loginDAO.resourceLogin(name,password);
	}
	
}
