<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.util.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href=css1/bootstrap.min.css>
<title>Insert title here</title>

<style>

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  /* background-color: #ff0000; */
  background-image: linear-gradient(to right, orange , blue,green);
}

li {
  float: right;
  padding-right:95px;
}

li a {
  display: block;
  color: white;
  text-align: center;
  text-style:bold;
  padding: 14px 16px;
  text-decoration: none;
}

.myDiv2 {
  font-size:25px;  
  font-style: bold;
font-weight: bold;
color:red; 
 margin: 26px 38px 19px 77px;
}
}

table {
  
  width: 30%;
}
td {
  height: 60px;
   text-align: center;
}

#categ{
width:100px;
height:30px;
border-radius:2px;

}

.backtag{
padding: 10px 20px;
  text-align: center;
float:right;
margin-right:50px;
font-size:20px;
/* background-color: #ff89ff; */
text-color: white;
  text-decoration: none;
  border-radius:8px;
}

select{
 align-items: center;
 justify-content: center;
}


</style>


</head>

<%String email=session.getAttribute("temail").toString();
String team=session.getAttribute("tlteam").toString();
%>
<body>
<div class="backtag">
<button onclick="history.back();" class="btn btn-primary" >Back</button>
</div>


<br><br>
<center>
<div class="myDiv2">
SHARE FROM TEAMMEMBER 
</div>




<br><br>
<form action="FileaddServlet" method="post" enctype="multipart/form-data">

<table class="table table-bordered">

 <tr>
<td><b>TITLE</b></td>
<td><input type="text" name="title" placeholder=" Title" style="width:280px;height:40px;border-radius: 1px;text-align:center;" required><br></td>
</tr> 

 <tr>
<td><b>Description</b></td>
<td><input type="text" name="desc" placeholder=" Description" style="width:280px;height:40px;border-radius: 1px;text-align:center;"><br></td>
</tr> 

 <tr>
<td><b>Email</b></td>
<td><input type="show" name="email" value=<%=email %> placeholder=" Description" style="width:280px;height:40px;border-radius: 1px;text-align:center;"></td>
</tr> 

 <tr>
<td><b>Team</b></td>
<td><input type="show" name="email" value=<%=team %> placeholder=" Description" style="width:280px;height:40px;border-radius: 1px;text-align:center;"></td>
</tr> 

<tr>
<td><b>File</b></td>
<td><input type="file" name="files" style="width:280px;height:40px;text-align:center;"><br><br></td>
</tr>

<tr>
<td colspan="2"><input type="submit" value="Submit" style="width:180px;height:40px;border-radius: 1px;background-color: #00ccff;margin-left:50dp; text-align: center;"><br><br></td>
</tr>

</table>
</form>

</center>

</body>
</html>