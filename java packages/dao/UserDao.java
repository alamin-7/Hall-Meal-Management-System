package com.hallmeal.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.hallmeal.model.User;

@Component
public class UserDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//@Transactional
	/*public void createUser(User user) {
		hibernateTemplate.save(user);
	}*/
	
	///creating user

	@Transactional
	public void createUser(User user) {
		// TODO Auto-generated method stub
		this.hibernateTemplate.saveOrUpdate(user);
		}
	
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
	
	public User getUser(int id)
	{
		return this.hibernateTemplate.get(User.class, id);
	}
	
	// get search user

	public User searchResult(int id) {
		// TODO Auto-generated method stub
		
		User user = this.hibernateTemplate.load(User.class, id);
		return user;
	}
	
	
}
