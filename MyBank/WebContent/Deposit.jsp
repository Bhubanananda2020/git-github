<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="background-color: #D0F0C0;">
<head>
<meta charset="ISO-8859-1">
<title>Deposit Section</title>
<%@include file="Headerfile.jsp"%>

<link href="css/jquery-ui.css" rel="stylesheet" type="text/css" />

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>

</head>
<body>

	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		if (session.getAttribute("tr1") == null) {
			response.sendRedirect("DHome.jsp");
		}
	%>

	<form action="TrasactionDepositServlet" method="post">
		<fieldset
			style="background-color: #50C878; border-style: solid; border-width: 5px;">
			<legend style="color: #222021; align-content: center;">Deposit
				Form</legend>

			<table style="width: 100%">
				<tr>
					<td>Account Number</td>
					<td><input type="text" value="${tr1}" name="accno" size="50"></td>
					<td>Deposit Date</td>
					<td><input type="text" name="depodt" size="30" id="datepicker"></td>
				</tr>

				<tr>
					<td></td>
					<td></td>
					<td>Deposit person Name</td>
					<td><input type="text" name="dopnm" size="30"></td>
				</tr>


				<tr>
					<td>Account Holder Name</td>
					<td><input type="text" name="accholnm" value="${tr2}"
						size="50"></td>
					<td>Relation</td>
					<td><input type="text" name="rltion" size="30"></td>
				</tr>

				<tr>
					<td></td>
					<td></td>
					<td>Deposit person mobile</td>
					<td><input type="text" name="dopmob" size="30"></td>
				</tr>


				<tr>
					<td>Opening Balance</td>
					<td><input id="cbal" type="text" size="10" name="openbal"
						oninput="netbal()" value="${tr32}" /></td>
					<td>RefernoCheckno</td>
					<td><input type="text" name="refno" size="30"></td>
				</tr>

				<tr>
					<td>Deposit In</td>
					<td><input type="radio" name="Deposit" value="Cheque"
						onClick="on2();off1();">Cheque <input type="radio"
						name="Deposit" value="Cash" onClick="on1();off2();"
						checked="checked">Cash</td>
					<td>Transaction no</td>
					<td><input type="text" name="trno" size="30"></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td>Total Deposit</td>
					<td><input id="dbal" type="text" size="10" name="totaldipamt"
						oninput="netbal()" /></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td>Net Balance</td>
					<td><input id="nbal" type="text" size="10" name="netbalance"
						oninput="netbal()" /></td>
				</tr>

				<tr id="hidethis1">
					<td>Cash Details</td>
					<td>
						<table>
							<tr>
								<td></td>
							</tr>
							<tr>
								<th>Details</th>
								<th>pic</th>
								<th>Amount</th>
							</tr>
							<tr>
								<td><input id="box1" type="text" oninput="calculate1()"
									value="2000" size="10" disabled="disabled" /></td>
								<td><input id="box2" type="text" oninput="calculate1()"
									size="2" /></td>
								<td><input id="result1" type="text" size="10" /></td>
							</tr>
							<tr>
								<td><input id="box3" type="text" oninput="calculate2()"
									value="500" size="10" disabled="disabled" /></td>
								<td><input id="box4" type="text" oninput="calculate2()"
									size="2" /></td>
								<td><input id="result2" type="text" size="10" /></td>
							</tr>
							<tr>
								<td><input id="box5" type="text" oninput="calculate3()"
									value="200" size="10" disabled="disabled" /></td>
								<td><input id="box6" type="text" oninput="calculate3()"
									size="2" /></td>
								<td><input id="result3" type="text" size="10" /></td>
							</tr>
							<tr>
								<td><input id="box7" type="text" oninput="calculate4()"
									value="100" size="10" disabled="disabled" /></td>
								<td><input id="box8" type="text" oninput="calculate4()"
									size="2" /></td>
								<td><input id="result4" type="text" size="10" /></td>
							</tr>
							<tr>
								<td><input id="box9" type="text" oninput="calculate5()"
									value="50" size="10" disabled="disabled" /></td>
								<td><input id="box10" type="text" oninput="calculate5()"
									size="2" /></td>
								<td><input id="result5" type="text" size="10" /></td>
							</tr>
							<tr>
								<td><input id="box11" type="text" oninput="calculate6()"
									value="20" size="10" disabled="disabled" /></td>
								<td><input id="box12" type="text" oninput="calculate6()"
									size="2" /></td>
								<td><input id="result6" type="text" size="10" type="text" /></td>
							</tr>
							<tr>
								<td><input id="box13" type="text" oninput="calculate7()"
									value="10" size="10" disabled="disabled" /></td>
								<td><input id="box14" type="text" oninput="calculate7()"
									size="2" /></td>
								<td><input id="result7" type="text" size="10" /></td>
							</tr>


							<tr>
								<td>Coin</td>
								<td><input id="box15" type="text" oninput="calculate8()"
									size="2" /></td>
								<td><input id="result8" type="text" size="10" /></td>
							</tr>
							<tr>
								<td></td>
								<td>Total</td>
								<td><input id="result9" type="text" size="10"
									name="totalamt" /></td>
							</tr>
						</table>

					</td>

				</tr>

				<tr id="hidethis2" >
					<td>Cheque Details</td>

					<td>
						<table >

							<tr>
								<th>Sr no</th>
								<th>Cheque no</th>
								<th>Cheque bank details</th>
								<th>Cheque date</th>
								<th>Amount</th>


							</tr>

							<tr>
								<td><input type="text" size="2"></td>
								<td><input type="text" size="10"></td>
								<td><input type="text" size="20"></td>
								<td><input type="text" size="10"></td>
								<td><input type="text" size="10"></td>
							</tr>
							<tr>
								<td><input type="text" size="2"></td>
								<td><input type="text" size="10"></td>
								<td><input type="text" size="20"></td>
								<td><input type="text" size="10"></td>
								<td><input type="text" size="10"></td>
							</tr>
							<tr>
								<td><input type="text" size="2"></td>
								<td><input type="text" size="10"></td>
								<td><input type="text" size="20"></td>
								<td><input type="text" size="10"></td>
								<td><input type="text" size="10"></td>
							</tr>


						</table>

					</td>

				</tr>

				<tr>
					<td></td>
					<td><input type="submit" value="Deposite"
						style="padding: 5px 1px; margin-right: 5px; color: white; font-size: 15px; background-color: #ED6A02; box-shadow: 0 5px #666; transform: translateY(8px); border-radius: 15px; width: 130px; height: 50px;">
						&nbsp; <input type="submit" value="Cancel"
						style="padding: 5px 1px; margin-right: 5px; color: white; font-size: 15px; background-color: #ED6A02; box-shadow: 0 5px #666; transform: translateY(8px); border-radius: 15px; width: 130px; height: 50px;"></td>
					<td></td>
					<td></td>
				</tr>

			</table>
		</fieldset>
	</form>


	<script type="text/javascript">
		function netbal() {

			var bal1 = document.getElementById('cbal').value;
			var bal2 = document.getElementById('dbal').value;
			var rbal = document.getElementById('nbal');
			var nbal = parseInt(bal1) + parseInt(bal2);
			rbal.value = nbal;

		}

		function calculate1() {
			var myBox1 = document.getElementById('box1').value;
			var myBox2 = document.getElementById('box2').value;
			var result1 = document.getElementById('result1');
			var myResult1 = 2000 * myBox2;
			result1.value = myResult1;
			var result9 = document.getElementById('result9');
			result9.value = parseInt(myResult1);

		}

		function calculate2() {
			var myBox3 = document.getElementById('box3').value;
			var myBox4 = document.getElementById('box4').value;
			var result2 = document.getElementById('result2');
			var myResult2 = 500 * myBox4;
			result2.value = myResult2;

			var result10 = document.getElementById('result9');
			result10.value = parseInt(myResult2) + 50;
		}

		function calculate3() {
			var myBox5 = document.getElementById('box5').value;
			var myBox6 = document.getElementById('box6').value;
			var result = document.getElementById('result3');
			var myResult3 = 200 * myBox6;
			result.value = myResult3;
		}
		function calculate4() {
			var myBox7 = document.getElementById('box7').value;
			var myBox8 = document.getElementById('box8').value;
			var result = document.getElementById('result4');
			var myResult4 = 100 * myBox8;
			result.value = myResult4;
		}
		function calculate5() {
			var myBox9 = document.getElementById('box9').value;
			var myBox10 = document.getElementById('box10').value;
			var result = document.getElementById('result5');
			var myResult5 = 50 * myBox10;
			result.value = myResult5;
		}
		function calculate6() {
			var myBox11 = document.getElementById('box11').value;
			var myBox12 = document.getElementById('box12').value;
			var result = document.getElementById('result6');
			var myResult6 = 20 * myBox12;
			result.value = myResult6;
		}
		function calculate7() {
			var myBox13 = document.getElementById('box13').value;
			var myBox14 = document.getElementById('box14').value;
			var result = document.getElementById('result7');
			var myResult7 = 10 * myBox14;
			result.value = myResult7;
		}

		function calculate8() {
			var myBox15 = document.getElementById('box15').value;
			var result = document.getElementById('result8');
			var myResult8 = myBox15;
			result.value = myResult8;
		}

		function off1() {
			document.getElementById("hidethis1").style.display = 'none';
		}
		function off2() {
			document.getElementById("hidethis2").style.display = 'none';
		}
		function on1() {
			document.getElementById("hidethis1").style.display = '';
		}
		function on2() {
			document.getElementById("hidethis2").style.display = '';
		}
	</script>





</body>
<footer><%@include file="Footerfile.jsp"%></footer>
</html>