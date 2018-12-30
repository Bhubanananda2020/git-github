<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="background-color: #D0F0C0;">
<head>
<meta charset="ISO-8859-1">
<title>Account Data</title>
<%@include file="Headerfile.jsp" %>
</head>
<body>



<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("input[type='radio']").change(function() {
			if ($(this).val() == "SBAccNo") {
				$("#otherAnswer1").show();
			} else {
				$("#otherAnswer1").hide();
			}

			if ($(this).val() == "SByName") {
				$("#otherAnswer2").show();
			} else {
				$("#otherAnswer2").hide();
			}

		});
	});
</script>


<form action="viewaccount1.jsp" method="post">

<fieldset
		style="background-color: #50C878; border-style: solid; border-width: 5px;border-color: black;">
		<legend style="color: black; align-content: center;">Account Details</legend>
<br><br>

<div style="width: 100%">
<input type="radio" name="Search" value="SBAccNo">Search By Account No
<input type="text" name="SearchAccount" id="otherAnswer1" hidden="yes"><br><br>
<br><br>
<input type="radio" name="Search" value="SByName">Search By Name
<input type="text" name="SearchName" id="otherAnswer2" hidden="yes"><br><br>
<br><br><br>




<input type="submit" value="Find" style="padding: 5px 1px; margin-right: 5px; color: white;
 font-size: 15px; background-color: #ED6A02; box-shadow: 0 5px #666; transform: translateY(8px); 
 border-radius: 15px; width: 130px; height: 50px;">


</div>
<br><br><br><br>
</fieldset>


</form>









</body>

<footer><%@include file="Footerfile.jsp" %></footer>
</html>