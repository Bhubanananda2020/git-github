<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="Headerfile.jsp"%>
<link rel="stylesheet" type="text/css"	href=" https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script	src="https:////cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

</head>
<body style="background-color: #50C878;">

	<form method="post">
		<div id="dynamic">
			<%@page import="loginpackage.*,java.util.*"%>
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<table id="myTable">
				<thead>
					<tr>
		
						
						<th>F_name</th>
						<th>L_name</th>
						<th>Age</th>
						<th>Email</th>
						<th>Mobile</th>
						<th>Gov_id</th>
						<th>User_nm</th>
						<th>Password</th>
						<th>Label</th>
						<th>Do_join</th>
					</tr>
				</thead>
				<tbody>
					<%
						List<LoginModel> list = LoginDao.getAllAccount();
						request.setAttribute("list", list);
					%>
					<c:forEach items="${list}" var="m">
						<tr>
							<td>${m.getFname()}</td>
							<td>${m.getLname()}</td>
							<td>${m.getAge()}</td>
							<td>${m.getMob()}</td>
							<td>${m.getEid()}</td>
							<td>${m.getGid()}</td>
							<td>${m.getUnm()}</td>
							<td>${m.getUpwd()}</td>
							<td>${m.getLb()}</td>
							<td>${m.getDj()}</td>
							
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</form>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#myTable').DataTable();
		});
	</script>

</body>

</html>