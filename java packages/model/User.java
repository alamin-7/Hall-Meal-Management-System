package com.hallmeal.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int id;
	String studentID;
	String name;
	String userEmail;
	String dept;
	String contactNo;
	String password;
	String confirmPassword;
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(int id, String studentID, String name, String userEmail, String dept, String contactNo, String password,
			String confirmPassword) {
		super();
		this.id = id;
		this.studentID = studentID;
		this.name = name;
		this.userEmail = userEmail;
		this.dept = dept;
		this.contactNo = contactNo;
		this.password = password;
		this.confirmPassword = confirmPassword;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStudentID() {
		return studentID;
	}

	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", studentID=" + studentID + ", name=" + name + ", userEmail=" + userEmail + ", dept="
				+ dept + ", contactNo=" + contactNo + ", password=" + password + ", confirmPassword=" + confirmPassword
				+ "]";
	}

	
	
}
