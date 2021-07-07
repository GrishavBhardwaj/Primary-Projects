package com.ncu.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import com.ncu.model.Login;

@Controller
public class LoginController {

	@Autowired
	@Qualifier("userDaoImpl")
	private UserDao userDao;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLogin(HttpServletRequest request, HttpServletResponse response, Model model) {
		model.addAttribute("login", new Login());
		return "login";
	}
 
	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("login") Login login, HttpSession ses) {
		ModelAndView mav = null;

		Customer user = userDao.validateUser(login);
		System.out.println(user);

		if (null != user) {
			String email = login.getEmail();
			ses.setAttribute("email", email);
			if(email.equals("harshit@gmail.com") || email.equals("grishav@yahoo.com") || email.equals("gopal@hotmail.com")) {
				ses.setAttribute("check", true);
				mav = new ModelAndView("redirect:http://localhost:8080/PractoClone/doc");
			}else {
				ses.setAttribute("check", false);
				mav = new ModelAndView("redirect:http://localhost:8080/PractoClone/cust_home");
			}
		} else {
			mav = new ModelAndView("login");
			mav.addObject("message", "Username or Password is wrong!!");
		}
 
		return mav;
	}
}
