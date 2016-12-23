package com.niit.shopgirl.Controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopgirl.dao.temp.UserDao;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String homePage(){
		System.out.println("Executing the code");
		return "home";
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
	public ModelAndView validate(@RequestParam("id") String id,@RequestParam("password") String pwd ){
		System.out.println("In validate method");
		System.out.println("id"+id);
		System.out.println("password"+pwd);
		ModelAndView mv = new ModelAndView("home");
		UserDao userDao = new UserDao();
		if(userDao.isValidCredentials(id, pwd)==true){
			mv.addObject("successMsg","You are logged in successfully");
		}
		else{
			mv.addObject("errorMsg","Invalid Credentials,Please try again");
		}
		return mv;
	}
	
	
}
