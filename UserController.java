package com.niit.shopgirl.Controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopgirlbackend.dao.CategoryDAO;

import com.niit.shopgirlbackend.dao.SupplierDAO;
import com.niit.shopgirlbackend.dao.UserDAO;
import com.niit.shopgirlbackend.model.Category;
import com.niit.shopgirlbackend.model.Product;
import com.niit.shopgirlbackend.model.Supplier;
import com.niit.shopgirlbackend.model.User;

@Controller
public class UserController{
		
		public static Logger log = LoggerFactory.getLogger(UserController.class);
		
		@Autowired
		private UserDAO userDAO;
		
		@Autowired
		private User user;
		
		@Autowired
		private CategoryDAO categoryDAO;
		
		@Autowired
		private Category category;
		
		@Autowired
		private SupplierDAO supplierDAO;
		
		@Autowired
		private Supplier supplier;
		
		@Autowired
		private Product product;
		
		@Autowired
		private HttpSession session;
		
		
		
		@RequestMapping(value="/validate", method = RequestMethod.POST)
		public ModelAndView validateNow(@RequestParam(value="id")String userId,
				@RequestParam(value="password")String password,HttpSession session){
			
			log.debug("Starting of the method validate");
			ModelAndView mv = new ModelAndView("/home");
			user = userDAO.isValidUser(userId, password);
			System.out.println("i am in login method");
			if(user != null){
				log.debug("Valid Credentials");
				session.setAttribute("loggedInUser", user.getName());
				session.setAttribute("loggedInUserId", user.getId());
				session.setAttribute("user", user);
			
			if(user.getRole().equals("ROLE_ADMIN")){
				log.debug("logged in as Admin");
				mv.addObject("isAdmin","true");
				session.setAttribute("category",category);
				session.setAttribute("categoryList", categoryDAO.list());
				session.setAttribute("product", product);
				
				session.setAttribute("supplier",supplier);
				session.setAttribute("supplierList", supplierDAO.list());
			}
			/*else{
			log.debug("logged in as Enduser");
			mv.addObject("isAdmin","false");
			
			}*/
		}
			else{
				log.debug("Invalid credentials");
				mv.addObject("invalidCredentials","true");
				mv.addObject("errorMessage","Invalid Credentials");
			}
			log.debug("End of the method: validateNow");
			return mv;
			
					
}
		
		@RequestMapping(value = "/register", method = RequestMethod.POST)
		public ModelAndView registerUser(@ModelAttribute User user) {
			log.debug("Starting of the method registerUser");
			ModelAndView mv = new ModelAndView("/home");
			if (userDAO.get(user.getId()) == null)
			{
				user.setRole("ROLE_USER"); // all the users are end users by default
				userDAO.saveOrUpdate(user);
				System.out.println("I am in registration method");
				log.debug("You are successfully register");
				mv.addObject("newUserSaved", true);
				mv.addObject("successMessage", "You are successfully registered");
			} else {
				log.debug("User exist with this id");
			
				mv.addObject("errorMessage", "User exist with this id");
			}
			log.debug("Ending of the method registerUser");
			return mv;
		}
		
		@RequestMapping("/logout")
		public ModelAndView logout(HttpServletRequest request,HttpServletResponse response) {
			log.debug("Starting of the method logout");
			ModelAndView mv = new ModelAndView("/home");
			session.invalidate(); // will remove the attributes which are added
									// session
			session = request.getSession(true);
			session.setAttribute("category", category);
			session.setAttribute("categoryList", categoryDAO.list());

			mv.addObject("logoutMessage", "You successfully logged out");
			mv.addObject("loggedOut", "true");
			    
			log.debug("Ending of the method logout");
			return mv;
		}


	}


