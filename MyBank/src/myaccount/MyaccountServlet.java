package myaccount;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class MyaccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		String acntno = request.getParameter("SearchAccount");
		System.out.println(acntno);
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		
/*		out.print("<link rel='stylesheet' type='text/css' href='https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.css'/>");
		out.print("<script type='text/javascript' src='https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.js'></script>");
*/
		 
/*		
		out.print("<script type='text/javascript' src='https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css'></script>");
		out.print("<script type='text/javascript' src='https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css'></script>");
		out.print("<script type='text/javascript' src='https://code.jquery.com/jquery-3.3.1.js'></script>");
		out.print("<script type='text/javascript' src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>");
		out.print("<script type='text/javascript' src='https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js'></script>");
		out.print("<script type='text/javascript' src='https://cdn.datatables.net/buttons/1.5.2/js/buttons.flash.min.js'></script>");
		out.print("<script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js'></script>");
		out.print("<script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js'></script>");
		out.print("<script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js'></script>");
		out.print("<script type='text/javascript' src='https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js'></script>");
		out.print("<script type='text/javascript' src='https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js'></script>");
		out.print("<script type='text/javascript'>$(document).ready(function() {$('#example').DataTable( {dom: 'Bfrtip',buttons: [ 'copy', 'csv', 'excel', 'pdf', 'print'] } );} );</script>");
*/		
		
		
/*		
		List<MyaccountModel> list=MyaccountDao.getRecords(acntno);
		System.out.println(list);

		out.print("<table id='example' rules='groups' frame='hsides' border='2'>");
		out.print("<tr rules='groups'><th>Accountno</th><th>Accountname</th><th>Openalance</th><th>RefernoCheckno</th><th>Transactiondt</th><th>Transactionno</th><th>Withdraw</th><th>Deposit</th><th>Transactiontype</th><th>TotalAmount</th><th>Trperson</th><th>Trpersonmob</th><th>Relation</th><th>CurrentBalance1</th></tr>");

		for(MyaccountModel m:list)
		{
			out.print("<tr><td>"+m.getAccountno()+"</td><td>"+m.getAccountname()+"</td><td>"+m.getOpenalance()+"</td>"
					+ "<td>"+m.getRefernoCheckno()+"</td><td>"+m.getTransactiondt()+"</td><td>"+m.getTransactionno()+"</td>"
					+ "<td>"+m.getWithdraw()+"</td><td>"+m.getDeposit()+"</td><td>"+m.getTransactiontype()+"</td>"
					+ "<td>"+m.getTotalAmount()+"</td><td>"+m.getTrperson()+"</td><td>"+m.getTrpersonmob()+"</td>"
					+ "<td>"+m.getRelation()+"</td><td>"+m.getCurrentBalance1()+"</td></tr>");
		}
		out.print("</table>");
		out.close();


*/

















		/*		
		if(Accountno1.equals(acntno))
		{
			HttpSession session=request.getSession();
			session.setAttribute("myac1",Accountno1);
			session.setAttribute("myac2",Accountname1);
			session.setAttribute("myac3",Openalance1);
			session.setAttribute("myac4",RefernoCheckno1);
			session.setAttribute("myac5",Transactiondt1);
			session.setAttribute("myac6",Transactionno1);
			session.setAttribute("myac7",Withdraw1);
			session.setAttribute("myac8",Deposit1);
			session.setAttribute("myac9",Transactiontype1);
			session.setAttribute("myac10",TotalAmount1);
			session.setAttribute("myac11",Trperson1);
			session.setAttribute("myac12",Trpersonmob1);
			session.setAttribute("myac13",Relation1);
			session.setAttribute("myac14",CurrentBalance11);
		}

		 */

	}
}
