package com.niit.shopgirl.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopgirlbackend.dao.UserDAO;
import com.niit.shopgirlbackend.daoimpl.UserDAOImpl;
import com.niit.shopgirlbackend.model.User;




@Controller
public class HomeController {
	
	//Need to call methods of UserDAOImpl and User -- so autowired
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	User user;

	@RequestMapping("/")
	public ModelAndView homePage(){
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("homePage","true");
		return mv;
	}
	
	@RequestMapping("/login")
	public ModelAndView showLoginPage(){
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("msg","You clicked on login link");
		mv.addObject("showLoginPage","true");
		return mv;
	}
	
	@RequestMapping("/register")
	public ModelAndView showRegistrationPage(){
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("msg","You clicked on registration link");
		mv.addObject("showRegistrationPage","true");
		return mv;
	}
	
	@RequestMapping("/validate")
	public ModelAndView validate(@RequestParam("id") String id,@RequestParam("password") String pwd){
		System.out.println("In validate method");
		System.out.println("User ID"+id);
		System.out.println("password"+pwd);
		ModelAndView mv = new ModelAndView("home");
		
		if(userDAO.validate(id, pwd)!= null){
			mv.addObject("successMsg","You are logged in successfully");
		}
		else{
			mv.addObject("errorMsg","Invalid Credentials,Please try again");
		}
		return mv;
	}
	
	@RequestMapping("/cart")
	public ModelAndView showCartPage(){
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("msg","Your cart is Empty");
		mv.addObject("showCartPage","true");
		return mv;
	}
	
	@RequestMapping("/buy")
	public ModelAndView showBuyPage(){
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("msg","Sorry you need to sign up to buy a product");
		mv.addObject("showBuyPage","true");
		return mv;
	}
	
	
	
	
	
	
}
