<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>DataTables</title>
<%@include file="Headerfile.jsp"%>
<link rel="stylesheet" type="text/css"
	href=" https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body style="background-color: #50C878;">

	<form method="post">
		<div id="dynamic">
			<%@page import="myaccount.*,java.util.*"%>
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<table id="myTable">
				<thead>
					<tr>
						<th>Id</th>
						<th>Transaction Date</th>
						<th>Account No</th>
						<th>Open Balance</th>
						<th>Referno</th>
						<th>Transaction No</th>
						<th>Withdraw</th>
						<th>Deposit</th>
						<th>Transaction Type</th>
						<th>Total Amount</th>
						<th>Transaction Person</th>
						<th>CurrentBalance1</th>
					</tr>
				</thead>
				<tbody>
					<%
						String acntno = request.getParameter("SearchAccount");
						List<MyaccountModel> list = MyaccountDao.getRecords(acntno);
						request.setAttribute("list", list);
					%>
					<c:forEach items="${list}" var="m">
						<tr>
							<td>${ m.getId()}</td>
							<td>${ m.getTransactiondt()}</td>
							<td>${ m.getAccountno()}</td>
							<td>${ m.getOpenalance()}</td>
							<td>${ m.getRefernoCheckno()}</td>
							<td>${ m.getTransactionno()}</td>
							<td>${ m.getWithdraw()}</td>
							<td>${ m.getDeposit()}</td>
							<td>${ m.getTransactiontype()}</td>
							<td>${ m.getTotalAmount()}</td>
							<td>${ m.getTrperson()}</td>
							<td>${ m.getCurrentBalance1()}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</form>

<script type="text/javascript"	src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"	src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript"	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"	src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
<script type="text/javascript"	src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.flash.min.js"></script>
<script type="text/javascript"	src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script type="text/javascript"	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script type="text/javascript"	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<script type="text/javascript"	src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
<script type="text/javascript"	src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
<script type="text/javascript"	src="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"></script>
<script type="text/javascript"	src="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css"></script>








	<script type="text/javascript">
		$(document).ready(function() {	$('#myTable').DataTable(
				{
			        dom: 'Bfrtip',
			        buttons: [
			            'copy', 'csv', 'excel', 'pdf', 'print'
			        ]
			    }

				);	});
	</script>

</body>
<footer><%@include file="Footerfile.jsp"%></footer>
</html>