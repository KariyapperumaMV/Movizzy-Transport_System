<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!--adding css file-->
<link rel="stylesheet" href="css/register.css">

<meta charset="ISO-8859-1">
<title>Register - Rider</title>
</head>
<body>
	<div class="menu">
		<img id="logo" src="Images/logo1.png">
			<ul>
					
					<li><a href="Home.jsp">Home</a></li>
					<li><a href="driveroption.jsp">Drive</a></li>
					<li><a href="Rider.jsp">Ride</a></li>
					
					<li><a href="aboutus.php">About Us</a></li>
					
						
			</ul>
			</div>

	
	<div class="grid-item">
	
	<center><h1>Register Here!</h1>
	
	<form method = "post" action ="regRider">
		<label for="name"><b>User Name : </b></label>
		<input type = "text" name ="txt_uname" maxlength="50"  required><br>
		
		<label for="nic"><b>NIC : </b></label>
		<input type = "text" name = "txt_nic" > <br>
		
		<label for="address"><b>Address : </b></label>
		<input type = "text" name = "txt_address"> <br>
		
		<label for="phone"><b>Phone No : </b></label>
		<input type = "text" name = "txt_phone" pattern="[0-9]{10}" oninvalid="this.setCustomValidity('Please enter valid phone No.')" required> <br>
		
		<label for="email"><b>Email : </b></label>
		<input type = "text" name = "txt_email"> <br>
		
		<label for="password"><b>Password : </b></label>
		<input type ="password" name ="txt_password" pattern="(?=.*[0-9])(?=.*[!@#&$^%*])(?=.*[a-z])(?=.*[A-Z]).{6,12}" maxlength = "12" 
			title="Password should be of 6-12 lenght and should contain at least one Special Character, a Digit , Uppercase letter and a Lowercase letter. " required><br>
		
		<input type="checkbox" name="chk_terms" oninvalid="this.seetCustomValidity('Please accept Terms and Conditions to complete the registration process.')" required>&nbsp;
		<label for="name"><b>Accept Terms & Conditions</b></label><br><br>
		
		<center>
		<button name = "btn_back" value = "back" style= "background-color:#5C5C5C" ><a href="Rider.jsp">Back</a></button>
		<button value = "reset" style= "background-color:#5C5C5C" >Clear</button>
		<input type ="submit" value = "submit" name ="Register">
		</center>
		
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