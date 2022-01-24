package com.hallmeal.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class HallMealOrder {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int idd;
	String date;
	String studentID;
	int numBreakfast;
	int numLunch;
	int numDinner;
	
	public HallMealOrder() {
		super();
		// TODO Auto-generated constructor stub
	}

	public HallMealOrder(int idd, String date, String studentID, int numBreakfast, int numLunch, int numDinner) {
		super();
		this.idd = idd;
		this.date = date;
		this.studentID = studentID;
		this.numBreakfast = numBreakfast;
		this.numLunch = numLunch;
		this.numDinner = numDinner;
	}

	public int getIdd() {
		return idd;
	}

	public void setIdd(int idd) {
		this.idd = idd;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getStudentID() {
		return studentID;
	}

	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}

	public int getNumBreakfast() {
		return numBreakfast;
	}

	public void setNumBreakfast(int numBreakfast) {
		this.numBreakfast = numBreakfast;
	}

	public int getNumLunch() {
		return numLunch;
	}

	public void setNumLunch(int numLunch) {
		this.numLunch = numLunch;
	}

	public int getNumDinner() {
		return numDinner;
	}

	public void setNumDinner(int numDinner) {
		this.numDinner = numDinner;
	}

	@Override
	public String toString() {
		return "Order [idd=" + idd + ", date=" + date + ", studentID=" + studentID + ", numBreakfast=" + numBreakfast
				+ ", numLunch=" + numLunch + ", numDinner=" + numDinner + "]";
	}

}
