package bankaccount;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class BankAccountSaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();		

		String Accno1 = request.getParameter("acnm");
		String fname1 = request.getParameter("fname");
		String lname1 = request.getParameter("lname");
		String gender1 = request.getParameter("gender");
		String photo1 = request.getParameter("myFile");
		String dob1 = request.getParameter("dob");
		String age1 = request.getParameter("age");
		String padd1 = request.getParameter("padd");
		String cadd1 = request.getParameter("cadd");
		String emial1 = request.getParameter("eid");
		String mob1 = request.getParameter("mob");
		String doctype1 = request.getParameter("Document");
		String docnum1 = request.getParameter("doc");
		String fathernm1 = request.getParameter("FNname");
		String mothernm1 = request.getParameter("MNname");
		String fatheocc1 = request.getParameter("FOcupton");
		String fatherincm1 = request.getParameter("Foincom");
		String occup1 = request.getParameter("COcupton");
		String incom1 = request.getParameter("Coincom");
		String nomname1 = request.getParameter("Nmname");
		String nomage1 = request.getParameter("Nmag");
		String nomrtion1 = request.getParameter("Nmrel");
		String Accopendt1 = request.getParameter("acdt");
		String Acctyp1 = request.getParameter("typacc2");
		String Acccrdno1 = request.getParameter("cdno");
		String Acccbno1 = request.getParameter("cbno");
		String recvperson1 = request.getParameter("recvp");
		String cbal = request.getParameter("acamt");
		
		
		/*String r=  recvperson1+Acccbno1;*/
		
		BankAccountModel e = new BankAccountModel();
		e.setAccno(Accno1);	
		e.setFnm(fname1);	
		e.setLnm(lname1);
		e.setGend(gender1);
		e.setPhoto(photo1);
		e.setDob(dob1);	
		e.setAg(age1);	
		e.setPadd(padd1);
		e.setCadd(cadd1);
		e.setEid(emial1);
		e.setMob(mob1);	
		e.setDoctype(doctype1);
		e.setDocnum(docnum1);
		e.setFtrnm(fathernm1);
		e.setMtrnm(mothernm1);
		e.setFtroccu(fatheocc1);
		e.setFtrincm(fatherincm1);
		e.setOccup(occup1);
		e.setIncom(incom1);		
		e.setNmname(nomname1);
		e.setNmag(nomage1);		
		e.setNmerelation(nomrtion1);
		e.setAccopendt(Accopendt1);
		e.setAcctyp(Acctyp1);
		e.setAcccrdno(Acccrdno1);
		e.setAcccbno(Acccbno1);
		e.setRperson(recvperson1);
		e.setCbalace(cbal);
		
		
		
		
		
		int status=BankAccountDao.savepg(e);
		if(status>0)
		{
			response.sendRedirect("HomePG.jsp");
			out.println("Sucessfully Account open in our BAnk");
		}
		
		else
		{
			response.sendRedirect("NewAccountForm.jsp");
			out.println("Sorry! unable to save record");
		}		
		out.close();
		
		
		
	}
}