<%@page import="com.cetpa.*"%>
<%@page import="java.util.List"%>
<html>
 <body>
  <div style='width:90%;margin:auto;margin-top:20px;margin-bottom:5px'>
    <a href='insert.jsp' style='font-size:23px'>Add Employee</a>
  </div>
  <div style='border:2px outset black;width:90%;margin:auto'>
    <table border='1' style='margin:auto;border-collapse:collapse;width:97%;margin-top:10px;margin-bottom:10px;font-size:20px' cellpadding='5px'>
  	  <tr style="background-color:orange;color:white">
  	    <th colspan="8" align="center" style='font-size:22px'>Employee Dashboard</th>
  	  </tr>
  	  <tr>
  	    <th align="left">Eid</th><th align="left">First name</th><th align="left">Last name</th><th align="left">
  	    Department</th><th align="left">Phone</th>
  	    <th align="left">Email</th><th align="left">Salary</th>
  	    <th align="left" style='color:magenta'>Action</th>
  	  </tr>
  	  <%
  	  List<Employee> list=EmployeeRepository.getEmployeeList(); 
  	  for(Employee emp:list)
  	  {
  		  int eid=emp.getEid();
  		  %>
  		  <tr>
  		   <td><%=eid%></td>
  		   <td><%=emp.getFirstname()%></td>
  		   <td><%=emp.getLastname()%></td>
  		   <td><%=emp.getDepartment()%></td>
  		   <td><%=emp.getEmail()%></td>
  		   <td><%=emp.getPhone()%></td>
  		   <td>&#8377;<%=emp.getSalary()%></td>
  		   <td>
  		    <a href='edit-record.jsp?eid=<%=eid%>'>Edit |</a>
  		    <a href='delete-record.jsp?eid=<%=eid%>' onclick="return confirm('Are you sure to remove?')">Remove</a>
  		   </td>
  		  </tr>
  		  <%
  	  }
  	  %>
    </table>
  </div>
 </body>
</html>