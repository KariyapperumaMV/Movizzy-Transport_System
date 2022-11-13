package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RiderRidesServlet
 */
@WebServlet("/RiderRidesServlet")
public class RiderRidesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		// session
		HttpSession session = request.getSession();
		String s = session.getAttribute("id").toString();
		int rid = Integer.parseInt(s) ;
		
		// check whether there is a session
		if (rid == 0) {
			out.println("<script type='text/javascript'>");
			out.println("alert('No session has created');");
			out.println("location='RiderLogin.jsp'");
			out.println("</script>");
		}else {
			//getting data
			List<Ride> rideDetails = RiderDBUtil.getRideRides(rid);
			request.setAttribute("rideDetails" , rideDetails);
			
			//Redirecting to rider-rides.jsp page
			RequestDispatcher dis = request.getRequestDispatcher("Rider-Rides.jsp");
			if(dis==null) {
				out.println("<script type='text/javascript'>");
				out.println("alert('Data retriving error occured!');");
				out.println("location='RiderDashboard.jsp'");
				out.println("</script>");
			}else {
				dis.forward(request, response);
			}
		}
	}

}
