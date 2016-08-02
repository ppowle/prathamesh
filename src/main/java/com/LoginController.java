package com;

import java.util.List;

import javax.servlet.ServletContext;

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
	ServletContext req;

	@RequestMapping("/")
	public String show() {
		return "index";
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
	public String show5() {
		return "index";
	}

	@RequestMapping("/searchCar")
	public String show6() {
		return "searchCar";
	}

	@RequestMapping("/upcoming")
	public String show7() {
		return "upcoming";
	}

	@RequestMapping("/welcome")

	public ModelAndView method(@RequestParam("username") String id, @RequestParam("password") String pass) {
		if (id.equals("admin") && pass.equals("admin")) {
			ModelAndView model = new ModelAndView("welcome");
			return model;
		}
		String message = "Invalid Username or Password" + id;
		return new ModelAndView("login", "message", message);

	}

	@RequestMapping("/addLogin")
	public ModelAndView addLogin(@ModelAttribute Login login) {

		loginDAO.saveOrUpdate(login);

		return new ModelAndView("/home");

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

	@RequestMapping("/validate")
	public ModelAndView method1(@RequestParam("username") String id, @RequestParam("password") String pass) {
		if (id.equals("admin") && pass.equals("admin")) {
			ModelAndView model = new ModelAndView("welcome");
			return model;
		}
		String message = "Invalid Username or Password" + id;
		return new ModelAndView("login", "message", message);

	}
}
