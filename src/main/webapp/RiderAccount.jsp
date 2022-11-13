<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!--adding css file-->
<link rel="stylesheet" href="css/dashboard.css">

<meta charset="ISO-8859-1">
<title>Rider Account</title>
</head>
<body>
	<div class="menu">
		<img id="logo" src="Images/logo1.png">
			<ul>
					
					<li><a href="Home.jsp">Home</a></li>
					<li><a href="driveroption.jsp">Drive</a></li>
					<li><a href="Rider.jsp">Ride</a></li>
					
					<li><a href="aboutus.java">About Us</a></li>
					
						
			</ul>
			</div>

	
	<div class="grid-item">

	<c:forEach var = "rider" items = "${riderDetails}">
		<c:set var = "id" value = "${rider.rId}" />
		<c:set var = "name" value = "${rider.rUserName}" />
		<c:set var = "nic" value = "${rider.rNIC}" />
		<c:set var = "phone" value = "${rider.rPhone}" />
		<c:set var = "address" value = "${rider.rAddress}" />
		<c:set var = "email" value = "${rider.rEmail}" />
		<c:set var = "password" value = "${rider.rPassword}" />
		
		<center><h1>Account Details</h1>
		
		<table>
			<tr>
				<td>User Id : </td>
				<td>${rider.rId} </td>
			</tr>
			<tr>
				<td>User Name : </td>
				<td>${rider.rUserName}</td>
			</tr>
			<tr>
				<td>NIC : </td>
				<td>${rider.rNIC}</td>
			</tr>
			<tr>
				<td>Phone Number : </td>
				<td>${rider.rPhone}</td>
			</tr>
			<tr>
				<td>Address : </td>
				<td>${rider.rAddress}</td>
			</tr>
			<tr>
				<td>Email : </td>
				<td>${rider.rEmail}</td>
			</tr>
			<tr>
				<td>Total Rides : </td>
				<td>${rider.noOfRides}</td>
			</tr>
		</table>
	</c:forEach><br>
	
	<c:url value = "RiderUpdate.jsp" var = "RiderEditAccount">
		<c:param name = "id" value = "${id}"/>
		<c:param name = "name" value = "${name}"/>
		<c:param name = "nic" value = "${nic}" />
		<c:param name = "phone" value = "${phone}" />
		<c:param name = "address" value = "${address}" />
		<c:param name = "email" value = "${email}" />
		<c:param name = "password" value = "${password}"/>
	</c:url>
	
	<c:url value = "RiderDelete.jsp" var = "RiderDeleteAccount">
		<c:param name = "id" value = "${id}"/>
		<c:param name = "name" value = "${name}"/>
		<c:param name = "nic" value = "${nic}" />
		<c:param name = "phone" value = "${phone}" />
		<c:param name = "address" value = "${address}" />
		<c:param name = "email" value = "${email}" />
		<c:param name = "password" value = "${password}"/>
	</c:url>
	
	<a href="RiderDashboard.jsp">
		<input type ="button" name = "btn_back" value = "Back" >
	</a>
	
	<a href=${RiderEditAccount}>
		<input type ="button" name = "btn_update" value = "Edit">
	</a>
	
	<a href=${RiderDeleteAccount}>
		<input type ="button" name = "btn_delete" value = "Delete Account">
	</a>
	</form>
	</center>
	</div>
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