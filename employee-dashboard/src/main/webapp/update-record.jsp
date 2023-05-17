<%@page import="com.cetpa.*"%>
<%
Employee empnew=new Employee();
empnew.setFirstname(request.getParameter("firstname"));
empnew.setLastname(request.getParameter("lastname"));
empnew.setDepartment(request.getParameter("department"));
empnew.setEmail(request.getParameter("email"));
empnew.setPhone(request.getParameter("phone"));
empnew.setSalary(Integer.parseInt(request.getParameter("salary")));
Employee empold=EmployeeRepository.getEmployeeRecord(Integer.parseInt(request.getParameter("eid")));
EmployeeRepository.updateEmployeeRecord(empnew,empold);
response.sendRedirect("/employee-dashboard");
%>