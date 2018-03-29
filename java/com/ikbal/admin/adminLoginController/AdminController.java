package com.ikbal.admin.adminLoginController;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ikbal.admin.adminLoginDTO.AdminDTO;


@Controller
@RequestMapping("/")
public class AdminController {
    @Value("${userid}")
	private String userid;
    @Value("${password}")
	private String password;

	public AdminController() {
		System.out.println(this.getClass().getSimpleName() + "Login object created");

	}
	
	
	
	
    @RequestMapping(value="/login.do",method=RequestMethod.POST)
	public ModelAndView loginAdminController(AdminDTO dto) {
		System.out.println("loginAdminController method started");
		
		System.out.println("login credentals validating......");
		if (dto.getUserid().equals(userid) && dto.getPassword().equals(password)) {
			System.out.println("admin login sucess");
			ModelAndView modelAndView1=new ModelAndView("/welcomeAdmin.jsp","admin",userid );
			return  modelAndView1;
		}
		System.out.println("login admin controller ended");
		ModelAndView modelAndView2=new ModelAndView("/login.jsp","loginFail","! wrong id or password entered !");
		return  modelAndView2;

	}
}
