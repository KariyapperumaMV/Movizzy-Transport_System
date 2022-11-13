package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RiderRegisterServlet
 */
@WebServlet("/RiderRegisterServlet")
public class RiderRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String uname = request.getParameter("txt_uname");
		String nic = request.getParameter("txt_nic");
		String address = request.getParameter("txt_address");
		String phone = request.getParameter("txt_phone");
		String email = request.getParameter("txt_email");
		String password = request.getParameter("txt_password");
		
		boolean isTrue;
		isTrue = RiderDBUtil.insertRider(uname, nic, address, phone, email, password);
		
		if(isTrue == true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Registration successful! Please login');");
			out.println("location='RiderLogin.jsp'");
			out.println("</script>");
			/*RequestDispatcher dispatcher = request.getRequestDispatcher("RiderLogin.jsp");//prompt rider login page
			dispatcher.forward(request, response);*/
		}else {  
			out.println("<script type='text/javascript'>");
			out.println("alert('Registration failed!');");
			out.println("location='RegisterRider.jsp'");
			out.println("</script>");
		}
			
	}

}
