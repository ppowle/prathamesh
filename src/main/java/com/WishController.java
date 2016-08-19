
package com;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WishController {
	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private WishDAO wishDAO;

	@Autowired
	private LoginDAO loginDAO;
	@Autowired
	private Wish wish;

	@RequestMapping(value = "/addToo", method = RequestMethod.GET)
	public String myWish(Model model, HttpSession session) {
		model.addAttribute("Wish", new Wish());
		String loggedInUserid = (String) session.getAttribute("loggedInUserID");
		model.addAttribute("wishList", wishDAO.list(loggedInUserid));
		// model.addAttribute("totalAmount", wishDAO.getSum(loggedInUserid));
		model.addAttribute("displayWish", "true");
		return "/wishpage";

	}

	@RequestMapping("/delete/{pid}")
	public String removeproduct(@PathVariable("pid") String id) {

		this.wishDAO.delete(id);
		return "redirect:/wishpage";

	}

	@RequestMapping(value = "/wish/addTo/{id}", method = RequestMethod.GET)
	public ModelAndView addToWish(@PathVariable("id") String id, HttpSession session) {

		Product product = productDAO.get(id);

		wish.setPprice(product.getP_price());
		System.out.println(product.getP_price());
		wish.setPname(product.getP_name());
		wish.setQuantity("One");
		wish.setPid(product.getP_id());
		wish.setPcategory(product.getP_class());
		wish.setPimage(product.getImage());
		String loggedInUserid = (String) session.getAttribute("loggedInUserID");
		wish.setUid(loggedInUserid);
		wish.setStatus("N");
		wishDAO.save(wish);
		List<Wish> Wishlist = wishDAO.list(loggedInUserid);

		ModelAndView mv = new ModelAndView("/wishpage");
		mv.addObject("wishList", Wishlist);

		return mv;

	}
}
