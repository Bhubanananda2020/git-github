<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="background-color: #D0F0C0;">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="Headerfile.jsp"%>
</head>
<body>



<form action="CreateProcess.jsp">
<fieldset>
<legend>BANK PERSON </legend>
<table>
<tr><td>First Name</td><td></td><td><input type="text" name="fname"></td></tr>

<tr><td>Last Name</td><td></td><td><input type="text" name="lname"> </td></tr>

<tr><td>Age</td><td></td><td> <input type="text" name="age"></td></tr>

<tr><td>Mobile no</td><td></td><td><input type="text" name="mob"></td></tr>

<tr><td>Email Id</td><td></td><td><input type="text" name="eid"></td></tr>

<tr><td>Gov id</td><td></td><td><input type="text" name="gid"></td></tr>

<tr><td>User Name</td><td></td><td><input type="text" name="unm"></td></tr>
<tr><td>Password</td><td></td><td><input type="text" name="upwd"></td></tr>
<tr><td>Label</td><td></td><td><input type="text" name="lb"></td></tr>
<tr><td>Date of join</td><td></td><td><input type="text" name="dj"></td></tr>
<tr><td></td><td><input type="submit" value="submit" ></td><td></td></tr>



</table>

</fieldset>



</form>




</body>
</html>


