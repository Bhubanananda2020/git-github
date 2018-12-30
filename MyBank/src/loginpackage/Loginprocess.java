package loginpackage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class  Loginprocess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String urname = request.getParameter("username");
		String urpassword = request.getParameter("userpswd");
	
		LoginModel e =  LoginDao.getRecords(urname);
		
		String Fname1=e.getFname();
		String Lname1=e.getLname();
		String Age1 = e.getAge();
		String MobileNo1 = e.getMob();
		String EmailId1 = e.getEid();
		String Govid1 = e.getGid();
		String Usernm1 = e.getUnm();
		String Pswd1 = e.getUpwd();
		String Label1 = e.getLb();
		String Doj1 = e.getDj();
		
		
		if(urname.equals(Usernm1) && urpassword.equals(Pswd1) )
		{
			HttpSession session=request.getSession();
			session.setAttribute("s1",Fname1);
			session.setAttribute("s2",Lname1);
			session.setAttribute("s3",Age1);
			session.setAttribute("s4",MobileNo1);
			session.setAttribute("s5",EmailId1);
			session.setAttribute("s6",Govid1);
			session.setAttribute("s7",Usernm1);
			session.setAttribute("s8",Pswd1);
			session.setAttribute("s9",Label1);
			session.setAttribute("s10",Doj1);			
			
			response.sendRedirect("HomePG.jsp");
		}
		
		else
		{	response.sendRedirect("DHome.jsp");		}	
	}
}
