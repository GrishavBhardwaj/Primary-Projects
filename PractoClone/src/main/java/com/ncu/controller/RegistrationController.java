package com.ncu.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ncu.dao.UserDao;
import com.ncu.model.Customer;

@Controller
public class RegistrationController {

	@Autowired
	@Qualifier("userDaoImpl")
	private UserDao userDao;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String showRegister(HttpServletRequest request, HttpServletResponse response, Model model) {
		model.addAttribute("customer", new Customer());
		return "register";
	}

	@RequestMapping(value = "/registerProcess", method = RequestMethod.POST)
	public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("customer") Customer customer) {
		System.out.println(customer + " ==<");
		userDao.register(customer);
		return new ModelAndView("redirect:http://localhost:8080/PractoClone/login", "firstname", customer.getName());
	}

	@RequestMapping("/contact")
	public String contact() {

		return "contact";
	}
}
