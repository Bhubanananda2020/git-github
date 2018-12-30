<%@page import="com.sun.corba.se.impl.protocol.giopmsgheaders.Message"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="loginpackage.LoginDao" %>
<jsp:useBean id="u" class="loginpackage.LoginModel"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
	int i = LoginDao.savepg(u);
if (i>0)
{	response.sendRedirect("Createlogin.jsp");
out.print("You are successfully registered");  
}
else
{	response.sendRedirect("Createlogin.jsp");
out.print("You are Unsuccessfully registered");

}
%>


</body>
</html>