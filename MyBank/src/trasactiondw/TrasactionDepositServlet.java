package trasactiondw;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




public class TrasactionDepositServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();		

		String Accountno1 = request.getParameter("accno");
		String Accountname1 = request.getParameter("accholnm");
		String Openalance1 = request.getParameter("openbal");
		String RefernoCheckno1 = request.getParameter("refno");
		String Transactiondt1 = request.getParameter("depodt");
		String Transactionno1 = request.getParameter("trno");
		String Withdraw1 = "";
		String Deposit1 = request.getParameter("totaldipamt");
		String Transactiontype1 = request.getParameter("Deposit");
		String TotalAmount1 = request.getParameter("totaldipamt");
		String Trperson1 = request.getParameter("dopnm");
		String Trpersonmob1 = request.getParameter("dopmob");
		String Relation1 = request.getParameter("rltion");
		String cbalance1 = request.getParameter("netbalance");



		TrasactionDepositModel e = new TrasactionDepositModel();
		e.setAccountno(Accountno1);
		e.setAccountname(Accountname1);
		e.setOpenalance(Openalance1);
		e.setRefernoCheckno(RefernoCheckno1);
		e.setTransactiondt(Transactiondt1);
		e.setTransactionno(Transactionno1);
		e.setWithdraw(Withdraw1);
		e.setDeposit(Deposit1);
		e.setTransactiontype(Transactiontype1);
		e.setTotalAmount(TotalAmount1);
		e.setTrperson(Trperson1);
		e.setTrpersonmob(Trpersonmob1);
		e.setRelation(Relation1);
		e.setCbal(cbalance1);


		int status=TrasactionDepositDao.savepg(e);
		if(status>0)
		{

			out.println("<script type=\"text/javascript\">");
			out.println("alert('Amount Deposit successfully');");
			out.println("location='Deposit.jsp';");
			out.println("</script>");	
		}

		else
		{

			out.println("<script type=\"text/javascript\">");
			out.println("alert('Unable To  Deposit');");
			out.println("location='Deposit.jsp';");
			out.println("</script>");

		}		
		out.close();

	}
}
