package transaction;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Trasactionservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String acntno11 = request.getParameter("acntno");
		int acntno = Integer.parseInt(acntno11);
		String trpg = request.getParameter("Transaction");
		String dip = "Deposit";

		TrasactionModel m = TrasactionDao.getRecords(acntno);
		int Accountno1 = m.getAccountno();			String Fname1 = m.getFname();
		String Lname1 = m.getLname();					String Gender1 = m.getGender();
		String Photo1 = m.getPhoto();					String Birthdate1 = m.getBirthdate();
		String Age1 = m.getAge();						String Paddress1 = m.getPaddress();
		String Caddress1 = m.getCaddress();				String Email1 = m.getEmail();
		String Mobile1 = m.getMobile();					String Doctype1 = m .getDoctype();
		String Docnum1 = m.getDocnum();					String Fathernm1 = m .getFathernm();
		String Mothernm1 = m.getMothernm();				String Fatheroccu1 = m.getFatheroccu();
		String Fatherincome1 = m.getFatherincome();		String Occupation1 = m.getOccupation();
		String Income1 = m.getIncome();					String Nomineenm1 = m.getNomineenm();
		String Nomineeag1 = m.getNomineeag();			String Nomineeraltion1 = m.getNomineeraltion();
		String Opendt1 = m.getOpendt();					String Acctype1 = m.getAcctype();
		String Cardno1 =m.getCardno();					String Chequebook1 =m.getChequebook();
		String	Rperson1 =m.getRperson();				String	CurrentBalance1= m .getCurrentBalance();




		if(Accountno1 == acntno)
		{
			HttpSession session=request.getSession();

			session.setAttribute("tr1",Accountno1);		session.setAttribute("tr17",Docnum1);
			session.setAttribute("tr2",Fname1);			session.setAttribute("tr18",Fathernm1);
			session.setAttribute("tr3",Lname1);			session.setAttribute("tr19",Mothernm1);
			session.setAttribute("tr4",Gender1);		session.setAttribute("tr20",Fatheroccu1);
			session.setAttribute("tr5",Photo1);			session.setAttribute("tr21",Fatherincome1);
			session.setAttribute("tr6",Birthdate1);		session.setAttribute("tr22",Occupation1);
			session.setAttribute("tr7",Age1);			session.setAttribute("tr23",Income1);
			session.setAttribute("tr8",Paddress1);		session.setAttribute("tr24",Nomineenm1);
			session.setAttribute("tr9",Caddress1);		session.setAttribute("tr25",Nomineeag1);
					session.setAttribute("tr26",Nomineeraltion1);
					session.setAttribute("tr27",Opendt1);
					session.setAttribute("tr28",Acctype1);
					session.setAttribute("tr29",Cardno1);
			session.setAttribute("tr14",Email1);		session.setAttribute("tr30",Chequebook1);
			session.setAttribute("tr15",Mobile1);		session.setAttribute("tr31",Rperson1);
			session.setAttribute("tr16",Doctype1);		session.setAttribute("tr32",CurrentBalance1);

			if (trpg.equals(dip))
			{	response.sendRedirect("Deposit.jsp");	}
			else
			{	response.sendRedirect("Withdraw.jsp");	}
		}
		
		else
		{	response.sendRedirect("HomePG.jsp");	}
	}
}
