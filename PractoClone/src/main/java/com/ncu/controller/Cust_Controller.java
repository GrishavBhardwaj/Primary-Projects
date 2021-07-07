package com.ncu.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ncu.dao.IComplaintDao;
import com.ncu.model.Complaints;

@Controller
public class Cust_Controller {

	@Autowired
	private IComplaintDao compdao;
	private List<Complaints> details;
	private List<Complaints> detail;

	@RequestMapping("/add_issue")
	public String add_issue() {

		return "add_issue";
	}

	@RequestMapping("/process_add")
	public String processAdd(HttpServletRequest hsr, HttpSession ses) {

		// For adding complaint
		String issue1 = hsr.getParameter("issue1");
		String issue2 = hsr.getParameter("issue2");
		String severity = hsr.getParameter("severity");
		String email = (String) ses.getAttribute("email");

		Complaints comp = new Complaints();

		comp.setStatus(0);
		comp.setIssue1(issue1);
		comp.setIssue2(issue2);
		comp.setSeverity(severity);
		comp.setEmail(email);

		@SuppressWarnings("unused")
		int check = compdao.addComplaint(comp);

		return "redirect:http://localhost:8080/PractoClone/cust_home";

	}

	@RequestMapping("/cust_home")
	public String cust_home(Model model, HttpSession ses) {

		String email = (String) ses.getAttribute("email");

		details = compdao.getComplaints(email);

		List<Complaints> complaintList = new ArrayList<>();
		for (Complaints comp : details) {
			complaintList.add(comp);
		}

		model.addAttribute("complaints", complaintList);

		return "cust_home";
	}

	@RequestMapping("/cust_profile")
	public String cust_profile(Model model, HttpSession ses) {

		String email = (String) ses.getAttribute("email");

		// For extracting cust info
		List<Map<String, Object>> info = compdao.getProfile(email);

		StringBuilder sb = new StringBuilder();
		for (Map<String, Object> s : info) {
			sb.append(s);
		}

		int name = sb.toString().indexOf("Name");
		int age = sb.toString().indexOf("Age");
		int emai = sb.toString().indexOf("Email");
		int number = sb.toString().indexOf("Number");
		int pass = sb.toString().indexOf("password");
		String pass1 = sb.toString().substring(pass + 9);
		int length = pass1.length();

		model.addAttribute("name", sb.toString().substring(name + 5, age - 2));
		model.addAttribute("age", sb.toString().substring(age + 4, emai - 2));
		model.addAttribute("email", sb.toString().substring(emai + 6, number - 2));
		model.addAttribute("number", sb.toString().substring(number + 7, pass - 2));
		model.addAttribute("pass", sb.toString().substring(pass + 9, (pass + 9) + (length - 1)));

		return "cust_profile";
	}

	@RequestMapping("/process_edit")
	public String processEdit(Model model, HttpServletRequest hsr) {

		// For update query
		String name2 = hsr.getParameter("name");
		int age2 = Integer.parseInt(hsr.getParameter("age"));
		String email2 = hsr.getParameter("email");
		long number2 = Long.parseLong(hsr.getParameter("number"));
		String pass2 = hsr.getParameter("pass");

		// For displaying cust info
		model.addAttribute("name", name2);
		model.addAttribute("age", age2);
		model.addAttribute("email", email2);
		model.addAttribute("number", number2);
		model.addAttribute("pass", pass2);

		@SuppressWarnings("unused")
		int check = compdao.editProfile(name2, age2, email2, number2);

		return "cust_profile";
	}

	@RequestMapping("/edit_issue")
	public String edit_issue(Model model, HttpSession ses) {

		String email = (String) ses.getAttribute("email");

		detail = compdao.getComplaints(email);

		List<Complaints> complaintList = new ArrayList<>();
		for (Complaints comp : detail) {
			complaintList.add(comp);
		}

		model.addAttribute("complaints1", complaintList);

		return "edit_issue";
	}

	@RequestMapping("/edit_issue1")
	public String edit_issue1(HttpServletRequest hsr, HttpSession ses, @ModelAttribute("complaints") Complaints comp,
			Model model) {

		int id = Integer.parseInt(hsr.getParameter("id"));

		ses.setAttribute("comp", id);

		// For getting old values
		List<Map<String, Object>> complaint = compdao.getComplaint(id);

		StringBuilder sb = new StringBuilder();
		for (Map<String, Object> s : complaint) {
			sb.append(s);
		}

		int issue1 = sb.toString().indexOf("issue1");
		int issue2 = sb.toString().indexOf("issue2");
		int severity = sb.toString().indexOf("severity");

		model.addAttribute("issue1", sb.toString().substring(issue1 + 7, issue2 - 2));
		model.addAttribute("issue2", sb.toString().substring(issue2 + 7, severity - 2));

		return "edit_issue1";

	}

	@RequestMapping("/process_issue")
	public String processIssue(HttpSession ses, Model model, @ModelAttribute("complaints") Complaints comp) {

		// For updating complaints
		int id = (int) ses.getAttribute("comp");
		int status = comp.getStatus();
		String issue1 = comp.getIssue1();
		String issue2 = comp.getIssue2();
		String severity = comp.getSeverity();

		@SuppressWarnings("unused")
		int check = compdao.editComplaint(id, status, issue1, issue2, severity);

		return "redirect:http://localhost:8080/PractoClone/edit_issue";

	}

	@RequestMapping("/logout")
	public String logout(HttpSession ses) {

		ses.invalidate();

		return "redirect:http://localhost:8080/PractoClone/home";
	}

	@RequestMapping("/home")
	public String home() {

		return "redirect:http://localhost:8080/PractoClone/";
	}

}
