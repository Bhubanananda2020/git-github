<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%@page import="transaction.TrasactionDao"%>
<jsp:useBean id="mm" class="transaction.TrasactionModel"></jsp:useBean>
<jsp:setProperty property="*" name="mm"/>

<% 
 	System.out.print(mm);
   TrasactionDao.delete(mm);
   response.sendRedirect("BankAccountSummer.jsp"); %>

</body>
</html>