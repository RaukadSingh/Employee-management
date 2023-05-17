package com.cetpa;

import java.util.List;

import org.hibernate.*;
import org.hibernate.query.Query;
import org.hibernate.cfg.Configuration;

public class EmployeeRepository 
{
	private static Session ses;
	private static Transaction t;
	static
	{
		SessionFactory fact=new Configuration().configure().buildSessionFactory();
		ses=fact.openSession();
		t=ses.getTransaction();
	}
	public static void saveEmployeeRecord(Employee emp)
	{
		t.begin();
		ses.save(emp);
		t.commit();
	}
	public static List<Employee> getEmployeeList()
	{
		Query<Employee> q=ses.createQuery("from Employee");
		List<Employee> elist=q.list();
		return elist;
	}
	public static Employee getEmployeeRecord(int eid)
	{
		Employee emp=ses.get(Employee.class,eid);
		return emp;
	}
	public static void deleteEmployeeRecord(Employee emp)
	{
		t.begin();
		ses.delete(emp);
		t.commit();
	}
	public static void updateEmployeeRecord(Employee newemp,Employee oldemp)
	{
		t.begin();
		oldemp.setFirstname(newemp.getFirstname());
		oldemp.setLastname(newemp.getLastname());
		oldemp.setDepartment(newemp.getDepartment());
		oldemp.setPhone(newemp.getPhone());
		oldemp.setEmail(newemp.getEmail());
		oldemp.setSalary(newemp.getSalary());
		t.commit();
	}
}
