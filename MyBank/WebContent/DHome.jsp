<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Bank</title>
<link rel="stylesheet" href="css/stylesheetDHome.css" />
</head>
<body style="background-color: #50C878">


	<div class="topnav">
		<a href="#home">HOME</a> <a href="#about">ABOUT</a> <a href="#contact">CONTACT US</a>
		<div class="login-container">
			<button onclick="openForm()">Login</button>
		</div>
	</div>

	<div class="abc4">
		<div class="abc3">
			<div class="abc2">
				<div class="abc1"></div>
			</div>
		</div>
	</div>

	<div class="form-popup" id="myForm">
		<form action="Loginprocess" class="form-container" method="post">
			<h1>Login</h1>

			Username: <input type="text" placeholder="Enter UserName" name="username" required>
		    Password: <input type="password" placeholder="Enter Password" name="userpswd" id="myInput" id="myInput1" required> Label : 
				<select name="lblbank">
					<option value=" "></option>
					<option value="Director">Director</option>
					<option value="Manager">Manager</option>
					<option value="Teller">Teller</option>
					<option value="Loan">Loan Officer</option>
					<option value="Service">Customer Service</option>
				</select> <br> <br> 
			<input type="checkbox" name="icb1" onclick="myFunction3()">Show Password
		    <input type="checkbox" name="icb2">	Remember Me <br>
			<button type="submit" class="btn">Login</button>
			<button type="button" class="btn cancel" onclick="closeForm()">Close</button>


		</form>
	</div>


	<div class="slideshow-container">

		<div class="mySlides fade">
			<img src="F:\1.jpg" style="width: 100%; height: 250px;">
		</div>
		<div class="mySlides fade">
			<img src="F:\2.jpg" style="width: 100%; height: 250px;">
		</div>
		<div class="mySlides fade">
			<img src="F:\3.jpg" style="width: 100%; height: 250px;">
		</div>
		<div class="mySlides fade">
			<img src="F:\4.jpg" style="width: 100%; height: 250px;">
		</div>
	</div>
	<br>

	<div style="text-align: center">
		<span class="dot"></span> <span class="dot"></span> <span class="dot"></span>
		<span class="dot"></span>
	</div>





	<script>



	function myFunction3() {
	    var x = document.getElementById("myInput");
	    if (x.type === "password") {
	        x.type = "text";
	    } else {
	        x.type = "password";
	    }
	}
		function openForm() {
			document.getElementById("myForm").style.display = "block";
		}

		function closeForm() {
			document.getElementById("myForm").style.display = "none";
			
		}

		var slideIndex = 0;
		showSlides();

		function showSlides() {
			var i;
			var slides = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("dot");
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			slideIndex++;
			if (slideIndex > slides.length) {
				slideIndex = 1
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " active";
			setTimeout(showSlides, 2000); // Change image every 2 seconds
		}
	</script>



</body>


<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>




<footer><%@include file="Footerfile.jsp"%></footer>
</html>