package com.hallmeal.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import com.hallmeal.dao.AdminDao;
import com.hallmeal.model.HallMealOrder;
import com.hallmeal.model.Mealorder;
import com.hallmeal.model.Order;
import com.hallmeal.model.User;

@Controller
public class AdminController {
	
	@Autowired
	private AdminDao adminDao;

	// show all users
		@RequestMapping("/showall")
		public String showallUser(Model m) {
			
			List<User> users = adminDao.showallUser() ;
			System.out.println(users);
			m.addAttribute("users",users);
			return "alluser";
		}
		
		// delete a user
		@RequestMapping("/delete/{id}")
		public RedirectView deleteUser(@PathVariable ("id") int id, HttpServletRequest req ) {
			
	        this.adminDao.deleteUser(id);
			
			RedirectView redirectView = new RedirectView();
			
			redirectView.setUrl(req.getContextPath() + "/showall");
			
			return redirectView;
		}
		
		// update user
		@RequestMapping("/update/{id}")
		public String updateUser(@PathVariable("id") int id, Model m)
		{
			User user = this.adminDao.getUser(id);
			System.out.println(user);
			m.addAttribute("user",user);
			
			return "updateUser";
		}
		
		// search a user by studentID
		@RequestMapping(path="/search", method=RequestMethod.POST)
		public String searchUser(@RequestParam("id") int id, Model m) {
			
			System.out.println(id);
			User user = this.adminDao.searchResult(id);
			System.out.println(user);
			
			m.addAttribute("user", user);
			
			return "searchUser";
		}
		
		
		@RequestMapping("/allorder")
		public String showallOrder(Model m) {
			
			List<HallMealOrder> orders = adminDao.showallOrder() ;
			System.out.println(orders);
			m.addAttribute("orders",orders);
			return "finalOrder";
		}
		
}
