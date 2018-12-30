<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="background-color: #D0F0C0;">
<head>
<meta charset="ISO-8859-1">
<title>Deposit Section</title>
<%@include file="Headerfile.jsp"%>

  <link href="css/jquery-ui.css" rel="stylesheet" type="text/css"/>
  
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>


</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		if (session.getAttribute("tr1") == null) {
			response.sendRedirect("DHome.jsp");
		}
	%>

	<form action="TrasactionWithdrawServlet" method="post">
		<fieldset
			style="background-color: #50C878; border-style: solid; border-width: 5px;">
			<legend style="color: #222021; align-content: center;">Withdraw
				Form</legend>



			<table style="width: 100%">

				<tr>
					<td>Account Number</td>
					<td><input type="text" value="${tr1}" name="accno" size="50"></td>

					<td>Withdraw Date</td>
					<td><input type="text" name="withdt" size="30" id="datepicker"></td>

				</tr>

				<tr>
					<td></td>
					<td></td>
					<td>Withdraw person Name</td>
					<td><input type="text" name="withnm" size="30"></td>

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
					<td>Withdraw person mobile</td>
					<td><input type="text" name="withmob" size="30"></td>
				</tr>

				<tr>
					<td>Opening Balance</td>
					<td><input id="cbal" type="text" size="10" name="openbal"
						oninput="netbal()" value="${tr32}" /></td>
					<td>RefernoCheckno</td>
					<td><input type="text" name="refno" size="30"></td>
				</tr>
				<tr>
					<td></td>
				</tr>





				<tr>
					<td></td>
					<td></td>
					<td>Transaction no</td>
					<td><input type="text" name="trno" size="30"></td>

				</tr>

				<tr>
					<td>Withdraw In</td>
					<td><input type="checkbox" name="cbty" value="Cheque">Cheque <input
						type="checkbox" name="cbty" value="Withdraw Form">Withdraw Form</td>
					<td>Total Withdraw</td>
					<td><input id="wbal" type="text" size="10" name="totaldipamt"
						oninput="netbal()" /></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td>Net Available Balance</td>
					<td><input id="nbal" type="text" size="10" name="netbalance"
						oninput="netbal()" /></td>
				</tr>



				<tr>
					<td>Withdraw form Details</td>
					<td>
						<table>
							<tr>
								<td></td>
							</tr>
							<tr>
								<th>Reference no</th>
								<th>Amount</th>
							</tr>

							<tr>
								<td><input type="text" size="10"></td>
								<td><input type="text" size="10"></td>
							</tr>

						</table>

					</td>
				</tr>


				<tr>
					<td>Cheque Details</td>

					<td>
						<table>
							<tr>
								<td></td>
							</tr>
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


						</table>

					</td>

				</tr>

				<tr>
					<td></td>
					<td><input type="submit" value="Withdraw"
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
			var bal2 = document.getElementById('wbal').value;
			var rbal = document.getElementById('nbal');
			var nbal = parseInt(bal1) - parseInt(bal2);
			rbal.value = nbal;

		}
	</script>


</body>

<footer><%@include file="Footerfile.jsp"%></footer>
</html>