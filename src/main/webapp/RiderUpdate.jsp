<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!--adding css file-->
<link rel="stylesheet" href="css/dashboard.css">

<meta charset="ISO-8859-1">
<title>Rider - Edit Account</title>
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
	<h1>Edit Account</h1>
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
	%>
	<form method ="post" action = "RidersAccountUpdate">
	<table>
		<tr>
			<td>User Id : </td>
			<td><input type = "text" name ="txt_id" value ="<%= id %>"  readonly></td>
		</tr>
		<tr>
			<td>User Name : </td>
			<td><input type = "text" name ="txt_name" value ="<%= name %>"></td>
		</tr>
		<tr>
			<td>NIC : </td>
			<td><input type = "text" name = "txt_nic" value = "<%= nic %>"></td>
		</tr>
		<tr>
			<td>Phone : </td>
			<td><input type ="text" name = "txt_phone" value = "<%= phone %>"></td>
		</tr>
		<tr>
			<td>Address : </td>
			<td><input type = "text" name = "txt_address" value = "<%= address %>"></td>
		</tr>
		<tr>
			<td>Email : </td>
			<td><input type = "text" name = "txt_email" value = "<%= email %>"></td>
		</tr>
		<tr>
			<td>Password : </td>
			<td><input type = "text" name = "txt_pass" value = "<%= password %>"></td>
		</tr>
	</table>
		<button name="btn_account" formaction ="RidersAccount" >Back</button>
		<input type = "submit" name = "submit" value = "Save">
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
			<h5 align="center">ęCopyright 2022. Movizzy. All Rights Reserved </h5> 
			</div>
</body>
</html>