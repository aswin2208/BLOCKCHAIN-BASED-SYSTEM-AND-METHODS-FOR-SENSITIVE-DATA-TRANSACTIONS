<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="css1/bootstrap.min.css">
    <link rel="stylesheet" href="css1/font-awesome.min1.css">
  <style>
  body {
  background-image:url("images/43.jpeg");
  background-size:cover;

  }
  
 

 </style>  
    
</head>

<body>

  <div class="container" >
    <h3 style="font-weight: bold; text-align: center;margin-top: 10px;color:white">New Staff Register Here...!!!</h3><br>
    <form method="post" action="SlregServlet" enctype="multipart/form-data">
     <div class="row">
       <div class="card col-sm-6" style="padding-bottom:10px;background-color: #333;color:#fff;padding:10px;margin-left:25%;width: 38em;margin-bottom: 25px">
     
     
      <div class="form-group">
     
     <label for="cars" style="color:#fff;">Choose Team:</label>

<select name="team" class="form-control" id="tl">
  <option value="TeamA">Team A</option>
  <option value="TeamB">Team B</option>
  <option value="TeamC">Team C</option>
  <option value="TeamD">Team D</option>
</select>
     
        </div>
     
     
        <div class="form-group">
          <label for="full_name" style="color:#fff;"> Name:</label>
          <input type="text" class="form-control" id="full_name" placeholder="Enter Full Name" name="name" required>
        </div>
        <div class="form-group">
          <label for="email"  style="color:#fff;">Email :</label>
          <input type="email" class="form-control" id="email" placeholder="Enter Email" name="email"  required>
          
        </div>
        <div class="form-group">
          <label for="text"  style="color:#fff;">Mobile :</label>
          <input type="text" class="form-control" id="email" placeholder="Enter contact No " name="mobile"  required>
          </div>
        
       <div class="form-group">
          <label for="text"  style="color:#fff;">Password :</label>
          <input type="text" class="form-control" id="password1" placeholder="Enter Password " name="psw"  required>
          </div>
          
        <div class="form-group">
          <label for="text"  style="color:#fff;">Re-Enter password:</label>
          <input type="password" class="form-control" id="password2" placeholder="Confirm Password" name="cpsw"  required>
          </div>
          

        <div class="form-group">
          <label for="card_photo"  style="color:#fff;">Upload photo :</label>
          <input type="file" class="form-control" placeholder="Enter password" name="photo" accept="image/*" onchange="preview_image(event)" required>
        </div>
        <div class="form-group">
          <label  style="color:#fff;">Picture Here!!!</label><br>
          <img src="" id="output_image"/ height="200px">
        </div>
        <center><button id="submit" name="donator_register" class="btn btn-primary btn-block"  style="width:50%;" onclick="return Validate()">Submit</button></center><br>
      </div>
    </div>
    <hr>
   
  </form>
</div>
</body>

<script type='text/javascript'>
  function preview_image(event)
  {
    var reader = new FileReader();
    reader.onload = function()
    {
      var output = document.getElementById('output_image');
      output.src = reader.result;
    }
    reader.readAsDataURL(event.target.files[0]);
  }
  </script>
  
       <script>
				window.onload = function () {
					document.getElementById("password1").onchange = validatePassword;
					document.getElementById("password2").onchange = validatePassword;
				}

				function validatePassword() {
					var pass2 = document.getElementById("password2").value;
					var pass1 = document.getElementById("password1").value;
					if (pass1 != pass2)
						document.getElementById("password2").setCustomValidity("Password Doesn't Match");
					else
						document.getElementById("password2").setCustomValidity('');
					//empty string means no validation error
				}
			</script>

</html>