<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!--adding css file-->
<link rel="stylesheet" href="css/dashboard.css">

<meta charset="ISO-8859-1">
<title>Rider - New Ride</title>
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
	
	<center><h1>New Ride</h1>
	<form method = "post" action ="RiderNewRide">
		<table>
		<tr>
			<td>Pickup Location :</td>
			<td><input type ="text" name ="txt_pickup" required></td>
		</tr>
		<tr>
			<td>Drop Location : </td>
			<td><input type ="text" name = "txt_drop" required></td>
		</tr>
		<tr>
			<td>Vehicle Type : </td>
			<td><select name = "vehiType" id="vehiType" oninvalid="this.setCustomValidity('Please select vehicle type')" required>
				<option value ="car"> Car </option>
				<option value ="van"> Van </option>
				<option value ="tuk"> Tuk </option>
				</select>
			</td>
		</tr>
		<tr>
			<td>Payment Method : </td>
			<td><input type ="radio" name ="payment" value="cash">Cash<br>
				<input type ="radio" name ="payment" value="card">Card
			</td>
		</tr>
		
		</table>	
		<a href="RiderDashboard.jsp">
			<input type ="button" value = "Back">
		</a>
		<input type = "reset" value = "Clear">
		<input type ="submit" value = "submit" name ="Book">
	</form>
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