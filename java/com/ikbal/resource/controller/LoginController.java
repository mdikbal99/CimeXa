package com.ikbal.resource.controller;



import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ikbal.resource.service.LoginServices;

@Controller
@RequestMapping("/")
public class LoginController {

	@Autowired
	private LoginServices loginServices;
	

	public LoginController() {
		System.out.println(this.getClass().getSimpleName() + "Created...");
	}
	
	@RequestMapping(value="resLogin.do", method=RequestMethod.POST)
	public ModelAndView resourceLoginController(HttpServletRequest req)
	{
		String name=req.getParameter("username");
		String paswd=req.getParameter("password");
		if(loginServices.resourceLoginService(name,paswd))
		{
			return new ModelAndView("resourceHome.jsp","msg",name);
		}
		return new ModelAndView("resourceLogin.jsp","msg","UserId and password is incorrect");
		
	}

}
