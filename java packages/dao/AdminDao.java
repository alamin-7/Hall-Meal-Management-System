package com.hallmeal.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hallmeal.model.HallMealOrder;
import com.hallmeal.model.Mealorder;
import com.hallmeal.model.Order;
import com.hallmeal.model.User;

@Component
public class AdminDao {
	
   @Autowired	
   HibernateTemplate hibernateTemplate;
	
   // show all user
   public List<User> showallUser(){
		
		List<User> users = this.hibernateTemplate.loadAll(User.class);
		return users;
	}
	
  // delete a user
	@Transactional
	public void deleteUser(int studentID) {
		
		User user = this.hibernateTemplate.load(User.class, studentID);
		this.hibernateTemplate.delete(user);
	}
	
	// get single user
	public User getUser(int id) {
		
		return this.hibernateTemplate.get(User.class, id);
	}
	
	// get search user

	public User searchResult(int id) {
			
		User user = this.hibernateTemplate.get(User.class, id);
		return user;
	}
	
	// show all order
	
	public List<HallMealOrder> showallOrder(){
		
		List<HallMealOrder> orders = this.hibernateTemplate.loadAll(HallMealOrder.class);
		return orders;
	}
			
}
