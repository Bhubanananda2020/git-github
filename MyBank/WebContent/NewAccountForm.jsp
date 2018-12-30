<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html >
<head>
<meta charset="ISO-8859-1">

<title>New Account Form</title>
<%@include file="Headerfile.jsp"%>

<link href="css/jquery-ui.css" rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>
	$(function() {
		$("#datepicker").datepicker();
	});
	$(function() {
		$("#datepicker1").datepicker();
	});

	function copyText()
	{
	var a = document.getElementById('one');
	var b = document.getElementById('two');
	if (a != null)
	{
	b.value = a.value;
	}
	}
	
	</script>



</head>
<body>

<form action="BankAccountSaveServlet" method="post">
	<fieldset
		style="background-color: #50C878; border-style: solid; border-width: 2px;border-color: black;">
		<legend style="color: black; align-content: center;">Personalia:</legend>

		<table style="width: 100%">
			<tr>
			
			
					<td>First Name :</td>
				<td><input type="text" name="fname" size="40"></td>
			</tr>
			<tr>
				<td>Last Name :</td>
				<td><input type="text" name="lname" size="40"></td>


				<td>Select</td>
				<td><input type="file" name="myFile" size="20"></td>

			</tr>

			<tr>
				<td>Gender :</td>
				<td><input type="radio" name="gender" value="male" checked>
					Male <input type="radio" name="gender" value="female">
					Female
			</tr>

			<tr>
				<td>Date Of Birth :</td>
				<td><input type="text" name="dob" size="30" id="datepicker1"></td>
			</tr>

			<tr>
				<td>Age :</td>
				<td><input type="text" name="age" size="30"></td>
				<td>Same As permanent :</td>
				<td><input type="checkbox" name="cbad" size="30" onclick="copyText()" ></td>

			</tr>

			<tr>
				<td>P. Address :</td>
				<td><textarea rows="4" cols="40" id="one" name="padd"></textarea></td>
				<td>C. Address :</td>
				<td><textarea rows="4" cols="40" id="two" name="cadd"></textarea></td>

			</tr>


			<tr>
				<td>Email_ID :</td>
				<td><input type="email" name="eid" size="40"></td>
				<td>Mobile :</td>
				<td><input type="number" name="mob" size="30"></td>
			</tr>

			<tr>
				<td>Document :</td>
				<td><input type="radio" name="Document" value="Pan">
					Pan Card <input type="radio" name="Document" value="Aadhara">
					Aadhara Card <input type="radio" name="Document" value="Driving">
					Driving Licence</td>

			</tr>

			<tr>
				<td></td>
				<td><input type="text" name="doc" size="50"></td>
			</tr>

		</table>
	</fieldset>

	<br>

	<fieldset
		style="background-color: #50C878; border-style: solid; border-width: 2px;border-color: black;">
		<legend style="color: black; align-content: center;">Other
			Data</legend>
		<table style="width: 100%">
			<tr>
				<td>Father Name :</td>
				<td><input type="text" name="FNname" size="50"></td>
				<td>Mother Name :</td>
				<td><input type="text" name="MNname" size="50"></td>
			</tr>

			<tr>
				<td>Father Occup. :</td>
				<td><input type="text" name="FOcupton" size="50"></td>
				<td>Father Income :</td>
				<td><input type="text" name="Foincom" size="50"></td>
			</tr>


			<tr>
				<td>Customer Occup :</td>
				<td><input type="text" name="COcupton" size="50"></td>

				<td>Customer Income :</td>
				<td><input type="text" name="Coincom" size="50"></td>
			</tr>



		</table>
	</fieldset>

<br>

	<fieldset
		style="background-color: #50C878; border-style: solid; border-width: 2px;border-color: black;">
		<legend style="color: black; align-content: center;">Nominee
			Details</legend>
		<table style="width: 100%">
			<tr>
				<td>Nominee Name :</td>
				<td><input type="text" name="Nmname" size="50"></td>
				<td>Nominee Age :</td>
				<td><input type="text" name="Nmag" size="50"></td>
			</tr>

			<tr>
				<td>Relation with :</td>
				<td><select name="Nmrel">
						<option value=" "></option>
						<option value="Father">Father</option>
						<option value="Mother">Mother</option>
						<option value="Brother">Brother</option>
						<option value="Sister">Sister</option>
						<option value="Other">Other</option>

				</select>
			</tr>


		</table>
	</fieldset>

<br>

	<fieldset
		style="background-color: #50C878; border-style: solid; border-width: 2px;border-color: black;">
		<legend style="color: black; align-content: center;">Bank
			User Only</legend>
		<table style="width: 100%">
			<tr>
				<td>Acc open date :</td>
				<td><input type="text" name="acdt" size="20" id="datepicker"></td>

				<td>deposite Amuont :</td>
				<td><input type="text" name="acamt" size="30"></td>


				<td>Type of Account :</td>
				<td><select name="typacc2" >
						<option value=" "></option>
						<option value="Saving">Saving</option>
						<option value="Current">Current</option>
						<option value="Mutualfund">Mutual fund</option>
						<option value="Insurance">Insurance</option>
				</select></td>
			</tr>
			<tr>
				<td>Card No:</td>
				<td><input type="text" name="cdno" size="20"></td>
				<td>Checkbook No:</td>
				<td><input type="text" name="cbno" size="30"></td>
				<td>Recv person:</td>
				<td><input type="text" name="recvp" size="30"></td>
			</tr>

			<tr>
				<td><input type="checkbox" name="checkbox" value="checkbox"></td>
				<td>I agree with Term and Condition......</td>
				<td></td>
			</tr>

			<tr>
				<td></td>
				<td></td>
				<td><input type="submit" name="submit" value="Submit"
					style="padding: 5px 1px; margin-right: 5px; color: white; font-size: 15px; background-color: #ED6A02; box-shadow: 0 5px #666; transform: translateY(8px); border-radius: 15px; width: 130px; height: 50px;"></td>
				<td></td>
			</tr>


		</table>
	</fieldset>

</form>
	<br>
	<br>
	<br>
	<br>



</body>

<footer><%@include file="Footerfile.jsp"%></footer>
</html>