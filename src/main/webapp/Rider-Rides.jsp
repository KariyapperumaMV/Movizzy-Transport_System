<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<!--adding css file-->
<link rel="stylesheet" href="css/dashboard.css">

<meta charset="ISO-8859-1">
<title>Your Rides</title>
</head>
<body>
	<div class="menu">
		<img id="logo" src="Images/logo1.png">
			<ul>
					
					<li><a href="Home.jsp">Home</a></li>
					<li><a href="driveroption.jsp">Drive</a></li>
					<li><a href="Rider.jsp">Ride</a></li>
					
					<li><a href="aboutus.jsp">About Us</a></li>
					
						
			</ul>
			</div>

	
	<div class="grid-item">
	<center>
	<table border = "1" style = "border-collapse: collapse">
	<!-- table row headers -->
	<tr>
		<th>Ride ID</th>
		<th>Pickup Location</th>
		<th>Drop Location</th>
		<th>Status</th>
		<th>Vehicle Type</th>
		<th>Fee</th>
		<th>Payment method</th>
		<th>Request Time</th>
		<th>Start Time</th>
		<th>End Time</th>
		<th>Date</th>
		<th>Driver ID</th>
	</tr>
	
	<c:forEach var = "ride" items = "${rideDetails}">
		<c:set var = "id" value = "${ride.rideId}" />
		<c:set var = "pick" value = "${ride.pickup}" />
		<c:set var = "drop" value = "${ride.drop}" />
		<c:set var = "vehicle" value = "${ride.vehiType}" />
		<c:set var = "status" value = "${ride.status}" />
		<c:set var = "fee" value = "${rider.rFee}" />
		<c:set var = "method" value = "${rider.paymentM}" />
		<c:set var = "request" value = "${rider.rTime}" />
		<c:set var = "start" value = "${rider.sTime}" />
		<c:set var = "end" value = "${rider.eTime}" />
		<c:set var = "date" value = "${rider.rDate}" />
		<c:set var = "driver" value = "${rider.driverId}" />
		
		<tr>
			<td>${ride.rideId}</td>
			<td>${ride.pickup}</td>
			<td>${ride.drop}</td>
			<td>${ride.status}</td>
			<td>${ride.vehiType}</td>
			<td>${ride.rFee}</td>
			<td>${ride.paymentM}</td>
			<td>${ride.rTime}</td>
			<td>${ride.sTime}</td>
			<td>${ride.eTime}</td>
			<td>${ride.rDate}</td>
			<td>${ride.driverId}</td>
		</tr>
	</c:forEach>
	</table>
	<br>
	<a href="RiderDashboard.jsp">
			<input type ="button" value = "Back">
		</a>
	</div>
	</center>
	
	<div class="menu">
		<img id="logo" src="Images/logo1.png">
			<ul >
					
					<h5 align="center">movizzy@info </h5> 
					<h5 align="center"> +94 (0)773 479 723 </h5> 
					
					<h5 align="center"> Colombo, Sri Lanka. </h5> 
					
					<h3> <img src="Images/tw.png"> </h3>
					<h3> <img src="Images/fb.png"> </h3>
					<h3> <img src="Images/ins.png"> </h3>
					<h3> <img src="Images/in.png"> </h3>
					
					
					
					
						
			</ul>
			<hr>
			<h5 align="center">©Copyright 2022. Movizzy. All Rights Reserved </h5> 
			</div>	
</body>
</html>