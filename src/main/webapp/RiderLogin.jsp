<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!--adding css file-->
<link rel="stylesheet" href="css/login.css">

<meta charset="ISO-8859-1">
<title>Rider Login</title>
</head>
<body>
	<div class="menu">
		<img id="logo" src="Images/logo1.png">
			<ul>
					
					<li><a href="Home.jsp">Home</a></li>
					<li><a href="driveroption.jsp">Drive</a></li>
					<li><a href="accommodation.php">Ride</a></li>
					
					<li><a href="aboutus.php">About Us</a></li>
					
						
			</ul>
			</div>
	
	<center><h1>Login Here!</h1></center>
	
	<div class="container">
	<form action = "RiderLogin" method = "post" >
		
		User Name : <input type = "text" name = "txt_uid" placeholder="Enter your username"> <br>
		Password : <input type = "password" name = "txt_pass" placeholder="Enter your password"> <br>
		
		<center><input type = "submit" name = "submit" value = "login"></center>
	</form>
	</div>
</body>
</html>