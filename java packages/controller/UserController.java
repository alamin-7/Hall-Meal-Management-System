package com.hallmeal.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import com.hallmeal.dao.UserDao;
import com.hallmeal.model.User;


@Controller
public class UserController {

	@Autowired
	private UserDao userDao;
	
	// for showing user registration form
	@RequestMapping("/userregister")
	public String showuserRegisterform () {
		
		return "userregisterForm";
	}
	
	// submitting user registration form
	@RequestMapping(path="/userregister", method = RequestMethod.POST)
	public RedirectView handleForm(@ModelAttribute User user, HttpServletRequest req ) {
		System.out.println(user);
		
		this.userDao.createUser(user);
		
        RedirectView redirectView = new RedirectView();
		
		redirectView.setUrl(req.getContextPath() + "/showall");
		
		return redirectView;
		
       // return "home";
		
	}
	
	// show all users
	@RequestMapping("/showall")
	public String showallUser(Model m) {
		
		List<User> users = userDao.showallUser() ;
		System.out.println(users);
		m.addAttribute("users",users);
		return "alluser";
	}
	
	// delete a user
	@RequestMapping("/delete/{id}")
	public RedirectView deleteUser(@PathVariable ("id") int id, HttpServletRequest req ) {
		
        this.userDao.deleteUser(id);
		
		RedirectView redirectView = new RedirectView();
		
		redirectView.setUrl(req.getContextPath() + "/showall");
		
		return redirectView;
	}
	
	// update user
	
	@RequestMapping("/update/{id}")
	public String updateUser(@PathVariable("id") int id, Model m)
	{
		User user = this.userDao.getUser(id);
		m.addAttribute("user",user);
		
		return "updateUser";
	}
	
	// search a user by studentID
	@RequestMapping(path="/search", method=RequestMethod.GET)
	public String searchUser(@RequestParam(value="search") int id, Model m) {
		
		System.out.println(id);
		User user = this.userDao.searchResult(id);
		System.out.println(user);
		
		m.addAttribute("user", user);
		
		return "searchUser";
	}
	
	
	
}
