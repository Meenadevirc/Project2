package com.niit.controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.service.ProductService;
@Controller
public class HomeController {
	@Autowired
	private ProductService productService;
	HomeController()
	{
		System.out.println("CREATING INSTANCE OF HomeController");
		
	}
	@RequestMapping("/home")
	public String homePage(HttpSession session){
		session.setAttribute("categories",productService.getAllCategories());
	return "home";
	}
		@RequestMapping("/aboutus")
		public String aboutUs(){
			return "aboutus";
		}
		@RequestMapping("/ContactUs")
		public String ContactUs(){
			return "ContactUs";
		}
		@RequestMapping("/login")
		public String login(@RequestParam(required=false) String error,Model model){
if(error!=null)
	model.addAttribute("error","Invalid Username/Password");
			return "login";
		}
		@RequestMapping("/email")
		public String emailpage()
		{
			return "email";
		}
}

