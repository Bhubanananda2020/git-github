<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css\stylesheetHeadfile.css" />
</head>


<body>
	<table style="width: 100%" class="topnav">
		<tr>
			<td><marquee direction="left" loop="100" scrollamount="5"
					scrolldelay="5" behavior="alternate" width="100%" bgcolor="#ff3424">
					Latest news ! </marquee></td>
		</tr>

	</table>

	<table class="topnav">
		<tr>
			<td><button type="button" class="btn" onclick="location.href= 'HomePG.jsp'">Home</button></td>
			<td><button type="button" class="btn" onclick="location.href= 'NewAccountForm.jsp'">New Account</button></td>
			<td><button type="submit" class="btn" onclick="location.href= 'Searchaccount.jsp'">Transaction</button></td>
			<td><button type="submit" class="btn" onclick="location.href= 'MutualFund.jsp'">Mutual Fund</button></td>
			<td><button type="submit" class="btn" onclick="location.href= 'Insurance.jsp'">Insurance</button></td>
			<td><button type="submit" class="btn" onclick="location.href= 'MyAccountdetails.jsp'">Account Details</button></td>

			<td class="dropdown">
				<button class="dropbtn" type="submit" class="dropdown"
					onclick="location.href= 'OtherData.jsp'">
					Other <i class="fa fa-caret-down"></i>
				</button>

				<div class="dropdown-content">
					<a href="Createlogin.jsp">Create new</a>
					<a href="Createloginsummer.jsp">Login Account summer</a>
					<a href="BankAccountSummer.jsp">Bank Account summer</a>
					<a href="#">Language</a>
					<a href="#">Setting</a> <a href="#"></a>
				</div>
			</td>

			<td><button type="submit" class="btn" onclick="openForm()">My
					Data</button></td>

		</tr>
	</table>










	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		if (session.getAttribute("s1") == null) {
			response.sendRedirect("DHome.jsp");
		}
	%>


	<div class="form-popup" id="myForm">
		<form action="LogoutServlet" class="form-container" method="post">
			<h3>Welcome ${s1}</h3>
			<button type="submit" class="">LogOut</button>

			<table>
				<tr>
					<td>First Name:</td>
					<td><input type="text" value="${s1}" id="myText1" disabled ></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><input type="text" value="${s2}" id="myText2" disabled ></td>
				</tr>
				<tr>
					<td>Age:</td>
					<td><input type="text" value="${s3}" id="myText3" disabled></td>
				</tr>
				<tr>
					<td>Mobile No:</td>
					<td><input type="text" value="${s4}" id="myText4" disabled></td>
				</tr>
				<tr>
					<td>Email Id:</td>
					<td><input type="text" value="${s5}" id="myText5" disabled></td>
				</tr>
				<tr>
					<td>Gov ID No:</td>
					<td><input type="text" value="${s6}" id="myText6" disabled></td>
				</tr>
				<tr>
					<td>Position :</td>
					<td><input type="text" value="${s9}" id="myText7" disabled></td>
				</tr>
				<tr>
					<td>User Name:</td>
					<td><input type="text" value="${s7}" id="myText8" disabled ></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="text" value="${s8}" id="myText9" disabled ></td>
				</tr>
			</table>

			<button type="button" class="">d</button>
			<button type="button" class="" onclick="myFunction()">Edit</button>
			<button type="button" class="" onclick="closeForm()">Close</button>

		</form>
	</div>




	<script>
		function openForm() {
			document.getElementById("myForm").style.display = "block";
		}

		function closeForm() {
			document.getElementById("myForm").style.display = "none";
			document.getElementById("myText1").disabled = true;
			document.getElementById("myText2").disabled = true;
		    document.getElementById("myText3").disabled = true;
		    document.getElementById("myText4").disabled = true;
		    document.getElementById("myText5").disabled = true;
		    document.getElementById("myText6").disabled = true;
		    document.getElementById("myText7").disabled = true;
		    document.getElementById("myText8").disabled = true;
		    document.getElementById("myText9").disabled = true;
		    
		}


		function myFunction() {
		    document.getElementById("myText1").disabled = false;
		    document.getElementById("myText2").disabled = false;
		    document.getElementById("myText3").disabled = false;
		    document.getElementById("myText4").disabled = false;
		    document.getElementById("myText5").disabled = false;
		    document.getElementById("myText6").disabled = false;
		    document.getElementById("myText7").disabled = false;
		    document.getElementById("myText8").disabled = false;
		    document.getElementById("myText9").disabled = false;
		    
		}
		


		
	</script>



	<div class="abc2">
		<div class="abc1"></div>
	</div>
</body>
</html>