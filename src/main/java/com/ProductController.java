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
public class ProductController {

	@Autowired
	private ProductDAO productDAO;

	@Autowired
	ServletContext req;

	@RequestMapping("product")
	public ModelAndView getAllproduc1t() {
		System.out.println("getAllproduct");
		List<Product> productlist = productDAO.list();

		ModelAndView mv2 = new ModelAndView("/product");
		mv2.addObject("productList", productlist);

		return mv2;
	}

	@RequestMapping("/viewProduct")
	public ModelAndView getAllproduct() {

		List<Product> productlist = productDAO.list();

		ModelAndView mv = new ModelAndView("/viewProduct");
		mv.addObject("productList", productlist);

		return mv;
	}

	@RequestMapping("/newList")
	public ModelAndView getAllnew() {

		List<Product> productlist = productDAO.categorylist("New");

		ModelAndView mv = new ModelAndView("/viewProduct");
		mv.addObject("productList", productlist);

		return mv;
	}

	@RequestMapping("/oldList")
	public ModelAndView getAllold() {

		List<Product> productlist = productDAO.categorylist("Old");

		ModelAndView mv = new ModelAndView("/viewProduct");
		mv.addObject("productList", productlist);

		return mv;
	}

	@RequestMapping("/add")

	public String show() {
		return "addProduct";

	}

	@RequestMapping("/addProduct")
	public ModelAndView addproduct(@ModelAttribute Product product) {

		String p = req.getRealPath("/");
		String path = product.getFilePath(p, req.getContextPath());
		System.out.println(path);
		System.out.println("path" + product.getIpath());
		productDAO.saveOrUpdate(product);

		return new ModelAndView("/added");
	}

	@RequestMapping("/project/delete/{id}")
	public String removeproduct(@PathVariable("id") String id) {

		this.productDAO.delete(id);
		return "redirect:/viewProduct";

	}

	@RequestMapping("/uc")
	public ModelAndView getAllproduct1() {

		List<Product> productlist = productDAO.list();

		ModelAndView mv = new ModelAndView("/upcoming");
		mv.addObject("productList", productlist);

		return mv;
	}

	@RequestMapping("/temp")
	public ModelAndView getAllproduct3() {

		List<Product> productlist = productDAO.list();

		ModelAndView mv = new ModelAndView("/temp");
		mv.addObject("productList", productlist);

		return mv;
	}

	@RequestMapping("/search")
	public ModelAndView getAllproduct(@RequestParam(value = "search") String search) {
		System.out.println("Searching Product");
		List<Product> productlist = productDAO.search(search);

		ModelAndView mv2 = new ModelAndView("/viewProduct");
		mv2.addObject("productList", productlist);

		return mv2;
	}

	@RequestMapping("/search1")
	public ModelAndView getAllproduct2(@RequestParam(value = "name") String name,
			@RequestParam(value = "type") String type, @RequestParam(value = "owner") String owner,
			@RequestParam(value = "price") String price) {
		System.out.println("Searching Product");
		List<Product> productlist = productDAO.search1(name, type, owner, price);

		ModelAndView mv2 = new ModelAndView("/viewProduct");
		mv2.addObject("productList", productlist);

		return mv2;
	}

}
