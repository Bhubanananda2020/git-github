<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>All Bank Account</title>
<%@include file="Headerfile.jsp"%>
<link rel="stylesheet" type="text/css"	href=" https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body style="background-color: #50C878;">

	<form method="post">
		<div id="dynamic">
		
			<%@page import="transaction.*,java.util.*"%>
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<table id="myTable">
				<thead>
					<tr>
						<th>Account no</th>
						<th>F_name</th>
						<th>L_name</th>
						<th>Gender</th>
						<th>Photo</th>
						<th>Birth date</th>
						<th>Age</th>
						<th>P_address</th>
						<th>C_address</th>
						<th>Email</th>
						<th>Mobile</th>
						<th>Doc_type</th>
						<th>Doc_no</th>
						<th>Father_nm</th>
						<th>Mother_nm</th>
						<th>Father_occu</th>
						<th>Father income</th>
						<th>Occupation</th>
						<th>Income</th>
						<th>Nominee_nm</th>
						<th>Nominee_ag</th>
						<th>Nominee_raltion</th>
						<th>Open_dt</th>
						<th>Acc_type</th>
						<th>Card_no</th>
						<th>Chequ_ebook</th>
						<th>Recv_person</th>
						<th>CurrentBalance1</th>
						<th>Edit</th>
						<th>Delete</th>
						
					</tr>

				</thead>
								<tbody>
					<%
						List<TrasactionModel> list = TrasactionDao.getAllAccount();
						request.setAttribute("list", list);
					%>
					<c:forEach items="${list}" var="m">
						<tr>
							<td>${m.getAccountno()}</td>
							<td>${m.getFname()}</td>
							<td>${m.getLname()}</td>
							<td>${m.getGender()}</td>
							<td>${m.getPhoto()}</td>
							<td>${m.getBirthdate()}</td>
							<td>${m.getAge()}</td>
							<td>${m.getPaddress()}</td>
							<td>${m.getCaddress()}</td>
							<td>${m.getEmail()}</td>
							<td>${m.getMobile()}</td>
							<td>${m .getDoctype()}</td>
							<td>${m.getDocnum()}</td>
							<td>${m.getFathernm()}</td>
							<td>${m.getMothernm()}</td>
							<td>${m.getFatheroccu()}</td>
							<td>${m.getFatherincome()}</td>
							<td>${m.getOccupation()}</td>
							<td>${m.getIncome()}</td>
							<td>${m.getNomineenm()}</td>
							<td>${m.getNomineeag()}</td>
							<td>${m.getNomineeraltion()}</td>
							<td>${m.getOpendt()}</td>
							<td>${m.getAcctype()}</td>
							<td>${m.getCardno()}</td>
							<td>${m.getChequebook()}</td>
							<td>${m.getRperson()}</td>	
							<td>${m.getCurrentBalance()}</td>
				
							<td><a href="editform.jsp?accountno=${m.getAccountno()}">Edit</a></td>
							<td><a href="CloseAccount.jsp?accountno=${m.getAccountno()}">Delete</a></td>
							
							
					
				
				
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