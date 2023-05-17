<%@page import="com.cetpa.*"%>
<%
Employee emp=new Employee();
emp.setFirstname(request.getParameter("firstname"));
emp.setLastname(request.getParameter("lastname"));
emp.setDepartment(request.getParameter("department"));
emp.setEmail(request.getParameter("email"));
emp.setPhone(request.getParameter("phone"));
emp.setSalary(Integer.parseInt(request.getParameter("salary")));
EmployeeRepository.saveEmployeeRecord(emp);
response.sendRedirect("/employee-dashboard");
%>