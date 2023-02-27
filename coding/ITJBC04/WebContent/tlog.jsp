<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>RegistrationForm_v1 by Colorlib</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css3/style.css">
	</head>
<style>
a{
text-decoration:none;
color:black;
}
</style>
	<body>

		<div class="wrapper" style="background-color:#000000;">
			<div class="inner">
				<div class="image-holder">
					<img src="images/44.jpeg" style= "margin:20px; width:300px; height:300px;" alt="">
				</div>
				<form action="TlLogServlet" method="post">
				
					<h3>TEAM LEADER LOGIN !!</h3>
					<div class="form-wrapper">
						<select name="team" class="form-control">
  <option value="TeamA">Team A</option>
  <option value="TeamB">Team B</option>
  <option value="TeamC">Team C</option>
  <option value="TeamD">Team D</option>
</select>

						<i class="zmdi zmdi-star zmdi-hc-fw"></i>
					</div>
				
					<div class="form-wrapper">
						<input type="text" class="form-control"  name="mail" placeholder="Enter Email"  >    
						<i class="zmdi zmdi-star zmdi-hc-fw"></i>
					</div>
					
					<div class="form-wrapper">
<input type="text" class="form-control" name="password" placeholder="Enter Password" >
						<i class="zmdi zmdi-lock"></i>
					</div>
					
					<button>Login
						<i class="zmdi zmdi-arrow-right"></i>
					</button><br>
					
				</form>
			</div>
		</div>
		
	</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>