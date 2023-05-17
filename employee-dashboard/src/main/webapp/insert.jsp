<html>
<body>
 <form action="save-record.jsp" method="post">
  <table style='border:2px solid blue;margin:auto;margin-top:30px;font-size:20px' cellpadding='10px'>
   <tr>
    <td>Enter employee first name</td>
    <td><input type='text' name='firstname' style='font-size:19px' required></td>
   </tr>
   <tr>
    <td>Enter employee last name</td>
    <td><input type='text' name='lastname' style='font-size:19px' required></td>
   </tr>
   <tr>
    <td>Select employee department</td>
    <td>
      <select name='department' style='font-size:19px;width:250px'>
       <option>Marketing</option>
       <option>Accounts</option>
       <option>Training</option>
       <option>Sales</option>
       <option>HR</option>
      </select>
    </td>
   </tr>
   <tr>
    <td>Enter employee phone</td>
    <td><input type='text' name='phone' style='font-size:19px' required></td>
   </tr>
   <tr>
    <td>Enter employee email</td>
    <td><input type='text' name='email' style='font-size:19px' required></td>
   </tr>
   <tr>
    <td>Enter employee salary</td>
    <td><input type='text' name='salary' style='font-size:19px' required></td>
   </tr>
   <tr>
    <td colspan="2" align="right">
    	<input style='font-size:18px;' type='submit' value="Save Record">
    </td>
   </tr>
   </table>
  </form>
  <div style='text-align: center;margin-top:10px'>
    <input type='button' value='Back' style='font-size:19px;color:white;background-color:orange' onclick='history.back()'>   
  </div>
</body>
</html>
