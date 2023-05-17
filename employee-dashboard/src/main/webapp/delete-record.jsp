<%@page import="com.cetpa.*"%>
<%
int eid=Integer.parseInt(request.getParameter("eid"));
Employee emp=EmployeeRepository.getEmployeeRecord(eid);
EmployeeRepository.deleteEmployeeRecord(emp);
response.sendRedirect("/employee-dashboard");
%>