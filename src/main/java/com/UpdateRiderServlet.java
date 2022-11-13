package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UpdateRiderServlet
 */
@WebServlet("/UpdateRiderServlet")
public class UpdateRiderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//fetching data
		String rid = request.getParameter("txt_id");
		String name = request.getParameter("txt_name");
		String nic = request.getParameter("txt_nic");
		String phone = request.getParameter("txt_phone");
		String address = request.getParameter("txt_address");
		String email = request.getParameter("txt_email");
		String password = request.getParameter("txt_pass");
		
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
			isTrue = RiderDBUtil.updateRider(rid, name, nic, phone, address, email, password);
			
			if(isTrue == true) {
				RequestDispatcher dis = request.getRequestDispatcher("RidersAccount");
				dis.forward(request, response);
			}else {  
				out.println("<script type='text/javascript'>");
				out.println("alert('Update failed!');");
				out.println("location='RiderDashboard.jsp'");
				out.println("</script>");	
			}
		}
	}

}
