package com.ikbal.resource.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.ikbal.admin.createProject.dto.CreateProjectDTO;
import com.ikbal.admin.createResource.dto.CreateResourceDTO;
import com.ikbal.resource.dto.IssueDTO;
import com.ikbal.resource.service.ResService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class ResController {
	@Autowired
	private ResService service;
	
	public ResController() {
	System.out.println(this.getClass().getSimpleName()+"\t created....");
	}
	
	
	@RequestMapping(value="getAllData.do", method=RequestMethod.GET)
	public ModelAndView getDataController()
	{
		List<CreateProjectDTO> list=service.getProjectListService();
		List<CreateResourceDTO> resList=service.getResourceService();
		return new ModelAndView("createIssue.jsp").addObject("projList",list).addObject("res", resList);
		
	}
	@RequestMapping(value="createIssue.do", method=RequestMethod.POST)
	public ModelAndView createIssueController(IssueDTO dto)
	{
		dto.setIssueNo(service.issueGenerator());
		service.createIssueService(dto);
		service.sendMailToEmployee(dto);
		List<CreateProjectDTO> list=service.getProjectListService();
		List<CreateResourceDTO> resList=service.getResourceService();
		return new ModelAndView("createIssue.jsp").addObject("projList",list).addObject("res", resList).addObject("msg", "You have creates issue successfully...");
	}
	
	@RequestMapping(value="issue.do", method=RequestMethod.GET)
	public ModelAndView viewIssueController()
	{
		List<IssueDTO> issue=service.viewIssueService();
		return new ModelAndView("viewIssue.jsp").addObject("issueDetails", issue);
	}
	@RequestMapping(value="editIssue.do", method=RequestMethod.GET)
	public ModelAndView editIssueController(HttpServletRequest req)
	{
		String issueno=req.getParameter("issueno");
		IssueDTO dto=service.searchIssueService(issueno);
		return new ModelAndView("editIssue.jsp","issue", dto);
	}
	@RequestMapping(value="updateIssue.do", method=RequestMethod.POST)
	public ModelAndView updateIssueController(IssueDTO dto,HttpServletRequest req)
	{
		String status=dto.getStatus();
		int id=Integer.parseInt(req.getParameter("id"));
		System.out.println("id\t"+id);
		service.updateIssueStatusService(status, id);
		List<IssueDTO> issue=service.viewIssueService();
		return new ModelAndView("viewIssue.jsp").addObject("issueDetails", issue);
		
	}
}
