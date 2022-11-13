package com;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class RiderLoginServlet
 */
@WebServlet("/RiderLoginServlet")
public class RiderLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("txt_uid");
		String password = request.getParameter("txt_pass");
		boolean isTrue;
		
		isTrue = RiderDBUtil.validate(username, password);
		
		if (isTrue == true) {
			int r = RiderDBUtil.getRiderId(username,password);
			
			if(r>0) {
				//creating session
				HttpSession session = request.getSession();
				session.setAttribute("id", r );
				
				//redirecting to dashboard
				response.sendRedirect("RiderDashboard.jsp");
				
			}else {
				//displaying an error message when session is equal to 0
				out.println("<script type='text/javascript'>");
				out.println("alert('Session creation failed');");
				out.println("location='RiderLogin.jsp'");
				out.println("</script>");
			}
			
		} else {
			//displaying an error message when username or password is incorrect
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='RiderLogin.jsp'");
			out.println("</script>");
		}
		
	}

}
