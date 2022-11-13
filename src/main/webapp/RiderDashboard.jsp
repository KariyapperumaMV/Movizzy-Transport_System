<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!--adding css file-->
<link rel="stylesheet" href="css/dashboard.css">
<meta charset="ISO-8859-1">
<title>Dashboard - Rider</title>
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
	
	<h1> Rider Dashboard </h1>
	
	<form method="post">
	
		
			<button name="btn_NewRide" formaction ="RiderNewRide.jsp" class = "link">New Ride</button>
		<br><br>
		
		<button name="btn_account" formaction ="RiderRides" class = "link">Your Rides</button>
		<br><br>
	
		<button name="btn_account" formaction ="RidersAccount" class = "link">Account</button>
		
	</form>
	</center>
	</div>
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