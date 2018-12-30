package loginpackage;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LogoutServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{


		HttpSession session=request.getSession();
		session.removeAttribute("s1");
		session.removeAttribute("s2");
		session.removeAttribute("s3");
		session.removeAttribute("s4");
		session.removeAttribute("s5");
		session.removeAttribute("s6");
		session.removeAttribute("s7");
		session.removeAttribute("s8");
		session.removeAttribute("s9");
		session.removeAttribute("s10");
		
		session.invalidate();
		response.sendRedirect("DHome.jsp");
				
		
		}

}
