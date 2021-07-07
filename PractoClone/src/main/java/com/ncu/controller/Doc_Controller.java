package com.ncu.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ncu.dao.DocDao;
import com.ncu.model.Complaints;

@Controller
public class Doc_Controller {
	@Autowired
	private DocDao dao;
	private List<Complaints> details;
	private List<Complaints> detail;

	@RequestMapping("/doc")
	public ModelAndView Doc_home(HttpServletRequest hsr, HttpSession ses) {

//		ApplicationContext context = new ClassPathXmlApplicationContext("springj.xml");
//	      IDocDao Template = (IDocDao)context.getBean("doc");
//		
		Boolean check = (Boolean) ses.getAttribute("check");
		ModelAndView mv2 = new ModelAndView();

		if (check == true) {

			details = dao.getComplaints();
			// System.out.println(details);
			List<Complaints> complaintList = new ArrayList<>();
			for (Complaints comp : details) {
				complaintList.add(comp);
			}

			mv2.addObject("detail", complaintList);

			mv2.setViewName("doc_home");

			return mv2;
		}

		mv2.setViewName("redirect:http://localhost:8080/PractoClone/");

		return mv2;
	}

	@RequestMapping("/treatment")
	public ModelAndView treatment_home(HttpServletRequest hsr) {
//		String email = hsr.getParameter("emailid");
		int id = Integer.parseInt(hsr.getParameter("id"));
		String issue = hsr.getParameter("issue");
//		String status = hsr.getParameter("status");

		detail = dao.getparticularComplaint(issue, id);

		List<Complaints> complaintList = new ArrayList<>();
		for (Complaints comp : detail) {
			complaintList.add(comp);
		}

		ModelAndView mv2 = new ModelAndView();
		mv2.addObject("detailtoo", complaintList);
		mv2.setViewName("treatment");
		return mv2;

	}

	@RequestMapping("/treated")
	public ModelAndView treatedt_home(HttpServletRequest hsr) {
		String treat1 = hsr.getParameter("treat1");
		int id = Integer.parseInt(hsr.getParameter("id"));
		String treat2 = hsr.getParameter("treat2");
		String treat3 = hsr.getParameter("treat3");
		String email = hsr.getParameter("emailid");
		String issue = hsr.getParameter("issue");

		System.out.println(treat1 + treat2 + treat3 + email + issue);

		@SuppressWarnings("unused")
		int done = dao.treatComplaint(treat1, treat2, treat3, id, issue);

		details = dao.getComplaints();
		// System.out.println(details);
		List<Complaints> complaintList = new ArrayList<>();
		for (Complaints comp : details) {
			complaintList.add(comp);
		}
		ModelAndView mv2 = new ModelAndView();

		mv2.addObject("detail", complaintList);

		mv2.setViewName("doc_home");

		return mv2;

	}

}
