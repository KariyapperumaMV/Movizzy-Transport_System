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
 * Servlet implementation class RiderNewRideServlet
 */
@WebServlet("/RiderNewRideServlet")
public class RiderNewRideServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//session
		HttpSession session = request.getSession();
		String s = session.getAttribute("id").toString();
		int id = Integer.parseInt(s) ;
		
		//fetching data
		String pLocation = request.getParameter("txt_pickup");
		String dLocation = request.getParameter("txt_drop");
		String vType = request.getParameter("vehiType");
		String pMethod = request.getParameter("payment");
		
		//check whether there is a session
		if (id == 0) {
			out.println("<script type='text/javascript'>");
			out.println("alert('No session has created');");
			out.println("location='RiderLogin.jsp'");
			out.println("</script>");
		}else {
			
			boolean isSuccess = RiderDBUtil.newRide(id, pLocation, dLocation, vType, pMethod);
			
			if(isSuccess == true) {
				RequestDispatcher dis = request.getRequestDispatcher("RiderRides");
				dis.forward(request, response);
			}else {
				out.println("<script type='text/javascript'>");
				out.println("alert('Your booking failed!');");
				out.println("location='RiderNewRide.jsp'");
				out.println("</script>");
			}
		}
		
	}

}
