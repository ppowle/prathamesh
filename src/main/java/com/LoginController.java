package com;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	@Autowired
	private LoginDAO loginDAO;

	@Autowired
	private WishDAO wishDAO;

	@Autowired
	private Wish wish;

	@Autowired
	private Product product;

	@Autowired
	private Login login;

	@Autowired
	ServletContext req;

	@RequestMapping("/")
	public ModelAndView show(HttpSession session, HttpServletRequest request) {

		ModelAndView mv;
		mv = new ModelAndView("index");
		String loggedInUserid = (String) session.getAttribute("loggedInUserID");
		mv.addObject("wish", wish);
		List<Wish> wishList = wishDAO.list(loggedInUserid);
		mv.addObject("wishSize", wishList.size());
		mv.addObject("isRegister", "true");
		mv.addObject("isLogin", "true");
		mv.addObject("isLogout", "false");
		return mv;
	}

	@RequestMapping("/new")
	public String show1() {
		return "new";
	}

	@RequestMapping("/login")
	public String show2() {
		return "login";
	}

	@RequestMapping("/contact")
	public String show3() {
		return "contact";
	}

	@RequestMapping("/about")
	public String show4() {
		return "about";
	}

	@RequestMapping("/index")
	public ModelAndView home(HttpSession session, HttpServletRequest request) {

		ModelAndView mv;
		mv = new ModelAndView("index");
		String loggedInUserid = (String) session.getAttribute("loggedInUserID");
		mv.addObject("wish", wish);
		List<Wish> wishList = wishDAO.list(loggedInUserid);
		mv.addObject("wishSize", wishList.size());
		session = request.getSession(false);
		if (session != null) {
			mv.addObject("isRegister", "false");
			mv.addObject("isLogin", "false");
			mv.addObject("isLogout", "true");
		}
		return mv;

	}

	@RequestMapping("/searchCar")
	public String show6() {
		return "searchCar";
	}

	@RequestMapping("/addLogin")

	public String addLogin(@ModelAttribute Login login) {

		String status = "success";
		login.setRole("user");
		System.out.println(login.getUsername());
		loginDAO.saveOrUpdate(login);

		return status;

	}

	@RequestMapping("/login1")
	public ModelAndView getAllLogin() {

		System.out.println("getAllLogin");

		List<Login> loginList = loginDAO.list();

		ModelAndView mv = new ModelAndView("/next");
		mv.addObject("loginList", loginList);

		return mv;
	}

	@RequestMapping("/delete/{id}")
	public String removelogin(@PathVariable("id") String id) {

		this.loginDAO.delete(id);
		return "redirect:/login1";

	}

	/*
	 * @RequestMapping(value = "/login", method = RequestMethod.GET) public
	 * ModelAndView login(@RequestParam(value = "error", required = false)
	 * String error,
	 * 
	 * @RequestParam(value = "logout", required = false) String logout) {
	 * 
	 * ModelAndView model = new ModelAndView(); if (error != null) {
	 * model.addObject("error", "Invalid username and password!"); }
	 * 
	 * if (logout != null) { model.addObject("msg",
	 * "You've been logged out successfully."); } model.setViewName("login");
	 * 
	 * return model;
	 * 
	 * }
	 */

	@RequestMapping("/validate")
	public ModelAndView isValidUser(@RequestParam(value = "username") String username,

			@RequestParam(value = "password") String password, HttpSession session, HttpServletRequest request) {

		String message;

		ModelAndView mv;
		if (loginDAO.validate(username, password)) {
			login = loginDAO.get(username);
			session = request.getSession(true);
			if (session != null)
				session.setAttribute("loggedInUser", login.getUsername());
			session.setAttribute("loggedInUserID", login.getUsername());
			session.setAttribute("product", product);

			if (loginDAO.validateuser(username, password)) {

				message = "Welcome," + username;
				mv = new ModelAndView("welcome");
				mv.addObject("message", message);
				wish = wishDAO.get(username);
				mv.addObject("wish", wish);
				List<Wish> wishList = wishDAO.list(username);
				mv.addObject("wishList", wishList);
				mv.addObject("wishSize", wishList.size());
			} else {

				mv = new ModelAndView("home");
				message = "Welcome," + username;
				mv.addObject("message", message);
				List<Wish> wishList = wishDAO.list(username);
				mv.addObject("wishList", wishList);
				mv.addObject("wishSize", wishList.size());
			}
		} else {
			message = "Invalid Username or Password";
			mv = new ModelAndView("login");
			mv.addObject("message", message);

		}

		return mv;
	}

	@RequestMapping("/logout")
	public ModelAndView doLogout(HttpSession session, HttpServletRequest request) {

		session = request.getSession(false);
		if (session != null)
			session.invalidate();
		ModelAndView mv;
		mv = new ModelAndView("index");

		mv.addObject("isRegister", "true");
		mv.addObject("isLogin", "true");
		mv.addObject("isLogout", "false");
		return mv;
	}

}
