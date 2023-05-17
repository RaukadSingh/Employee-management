<%@page import="com.cetpa.*"%>
<html>
<body>
 <%
 int eid=Integer.parseInt(request.getParameter("eid"));
 Employee emp=EmployeeRepository.getEmployeeRecord(eid);
 String dept=emp.getDepartment();
 String[] deptlist={"Marketing","Accounts","Training","Sales","HR"};
 %>
 <form action="update-record.jsp" method="post">
  <table style='border:2px solid blue;margin:auto;margin-top:30px;font-size:20px' cellpadding='10px'>
  <tr>
    <td>Employee id</td>
    <td><%=eid%><input type='hidden' name='eid' value='<%=eid%>'></td>
   </tr>
   <tr>
    <td>Edit employee first name</td>
    <td><input type='text' value="<%=emp.getFirstname()%>" name='firstname' style='font-size:19px' required></td>
   </tr>
   <tr>
    <td>Edit employee last name</td>
    <td><input type='text' value="<%=emp.getLastname()%>" name='lastname' style='font-size:19px' required></td>
   </tr>
   <tr>
    <td>Select employee department</td>
    <td>
      <select name='department' style='font-size:19px;width:250px'>
       <%for(String dd:deptlist)
       {
    	   if(dd.equals(dept))
    	   {%>
       		<option selected><%=dd%></option>
       	   <%}
    	   else
    	   {%>
          	<option><%=dd%></option>
           <%}
       }%>	
      </select>
    </td>
   </tr>
   <tr>
    <td>Edit employee phone</td>
    <td><input type='text' value="<%=emp.getPhone()%>" name='phone' style='font-size:19px' required></td>
   </tr>
   <tr>
    <td>Edit employee email</td>
    <td><input type='text' value="<%=emp.getEmail()%>" name='email' style='font-size:19px' required></td>
   </tr>
   <tr>
    <td>Edit employee salary</td>
    <td><input type='text' value="<%=emp.getSalary()%>" name='salary' style='font-size:19px' required></td>
   </tr>
   <tr>
    <td colspan="2" align="right">
    	<input style='font-size:18px;' type='submit' value="Update Record">
    </td>
   </tr>
   </table>
  </form>
  <div style='text-align: center;margin-top:10px'>
    <input type='button' value='Back' style='font-size:19px;color:white;background-color:orange' onclick='history.back()'>   
  </div>
</body>
</html>
