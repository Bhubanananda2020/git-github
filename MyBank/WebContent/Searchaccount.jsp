<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="Headerfile.jsp"%>
</head>
<body>


	<form action="Trasactionservlet" method="post">

		<fieldset
			style="background-color: #50C878; border-style: solid; border-width: 5px;border-color: black;">
			<legend style="color: #222021; align-content: center;">Search</legend>
<br><br>
			<table>
				<tr>
					<td>Account Number</td>
					<td><input type="text" name="acntno"></td>
				</tr>


				<tr>
					<td>Transaction :</td>
					<td><input type="radio" name="Transaction" value="Deposit"
						id="link1">Deposit <input type="radio" name="Transaction"
						value="Withdraw" id="link2">Withdraw</td>
				</tr>

				<tr>
					<td></td>
					<td><input type="submit" name="submit" value="submit"></td>
				</tr>

			</table>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		</fieldset>

	</form>




</body>

<footer><%@include file="Footerfile.jsp"%></footer>
</html>