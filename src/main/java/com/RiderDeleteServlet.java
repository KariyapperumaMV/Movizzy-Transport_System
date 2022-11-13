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
 * Servlet implementation class RiderDeleteServlet
 */
@WebServlet("/RiderDeleteServlet")
public class RiderDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//fetching data
				String rid = request.getParameter("txt_id");
				
				PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				
				// session
				HttpSession session = request.getSession();
				String s = session.getAttribute("id").toString();
				int id = Integer.parseInt(s) ;
				
				// check whether there is a session
				if (id == 0) {
					out.println("<script type='text/javascript'>");
					out.println("alert('No session has created');");
					out.println("location='RiderLogin.jsp'");
					out.println("</script>");
					
				}else {
					boolean isTrue = false ;
					isTrue = RiderDBUtil.deleteRider(rid);
					
					if(isTrue == true) {
						out.println("<script type='text/javascript'>");
						out.println("alert('Account Deleted Successfully!');");
						out.println("location='RegisterRider.jsp'");
						out.println("</script>");
					}else {  
						out.println("<script type='text/javascript'>");
						out.println("alert('Delete failed!');");
						out.println("location='RiderDashboard.jsp'");
						out.println("</script>");	
					}
				}
	}

}
