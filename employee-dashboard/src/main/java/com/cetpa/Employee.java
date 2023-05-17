package com.cetpa;

import javax.persistence.Entity;

@Entity
public class Employee 
{
	private int eid;
	private String firstname;
	private String lastname;
	private String department;
	private String email;
	private String phone;
	private int salary;
	
	public Employee() {}

	public Employee(String firstname, String lastname, String department, String email, String phone, int salary) 
	{
		this.firstname = firstname;
		this.lastname = lastname;
		this.department = department;
		this.email = email;
		this.phone = phone;
		this.salary = salary;
	}

	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}
	
}
