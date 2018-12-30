<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>DataTables example</title>

<!-- <style type="text/css" title="currentStyle">
@import "css/demo_table.css";
</style>

<script type="text/javascript" language="javascript" src="js/jquery.js"></script>
<script type="text/javascript" language="javascript"
	src="js/jquery.dataTables.js"></script>

<script type="text/javascript" charset="utf-8">
	$(document).ready(function() {
		var oTable = $('#example').dataTable({
			"processing" : true,
			"ajax" : {	"url" : "MyaccountDao",
				data: 'Account' +m.getAccountno(),
				"dataSrc" : "demo",
				"type" : "POST"
			}
		});
	});
</script> -->

</head>





<script type="text/javascript" language="javascript"
	src="resources/js/jquery.js"></script>
<script type="text/javascript" language="javascript"
	src="resources/js/jquery.dataTables.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.js"></script>

<script type="text/javascript"
	src="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.flash.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>


<script type="text/javascript">
		$(document).ready(function() {
			$('#example').DataTable({
				dom : 'Bfrtip',
				buttons : [ 'copy', 'csv', 'excel', 'pdf', 'print' ]
			});
		});
	</script>




<body>
	<form method="post">
		<div id="dynamic">

			<%@page import="myaccount.*,java.util.*"%>
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<h1>Users List</h1>

			<%
				String acntno = request.getParameter("SearchAccount");
				List<MyaccountModel> list = MyaccountDao.getRecords(acntno);
				request.setAttribute("list", list);
			%>

			<table cellpadding="0" cellspacing="0" border="0" class="display"
				id="example">
				<thead>
					<tr>
						<th width="10%">Account No</th>
						<th width="10%">Account Name</th>
						<th width="10%">Open Balance</th>
						<th width="10%">RefernoCheckno</th>
						<th width="10%">Transaction Date</th>
						<th width="10%">Transaction No</th>
						<th width="10%">Withdraw</th>
						<th width="10%">Deposit</th>
						<th width="10%">Transaction Type</th>
						<th width="10%">Total Amount</th>
						<th width="10%">Transaction Person</th>
						<th width="10%">TrpersonMobile</th>
						<th width="10%">Relation</th>
						<th width="10%">CurrentBalance1</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="m">
						<tr>
							<td>${ m.getAccountno()}</td>
							<td>${ m.getAccountname()}</td>
							<td>${ m.getOpenalance()}</td>
							<td>${ m.getRefernoCheckno()}</td>
							<td>${ m.getTransactiondt()}</td>
							<td>${ m.getTransactionno()}</td>
							<td>${ m.getWithdraw()}</td>
							<td>${ m.getDeposit()}</td>
							<td>${ m.getTransactiontype()}</td>
							<td>${ m.getTotalAmount()}</td>
							<td>${ m.getTrperson()}</td>
							<td>${ m.getTrpersonmob()}</td>
							<td>${ m.getRelation()}</td>
							<td>${ m.getCurrentBalance1()}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</form>
</body>
</html>