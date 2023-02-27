 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import=" Dbconn.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Management</title>
<link rel="stylesheet" href="css/main.css">
</head>
<style>
body{
background-image:url("images/47.jpeg");
background-size:cover;
}
a{
text-decoration:none;
}

</style>
 <%
       
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT count(*) FROM `bc04`.`task` Where status='TL Response' ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	   int cout=rs.getInt(1);  
    	     
    	  
    	   
       %>

<body>
<div class="container">
  <div class="nav">
    <div class="logo">
    </div>
    <ul>
      <li><a href="tlreg.jsp"><span style="color:white">Add TL</span></a></li>
      <li><a href="tlresponseview.jsp"><span style="color:white">TL Response</span><span style="color:black">(<%=cout %>)</span></a></li>
      <li><a href="teamleadlistview.jsp"><span style="color:white">View</span></a></li>
       <li><a href="Manageacceptview.jsp"><span style="color:white">Accept View</span></a></li>
      <li><a href="homepage.jsp"><span style="color:white">Logout</span></a>		</li>
    </ul>
  </div>

  <div class="hero">
    <div class="title">Management</div>

 
  </div>

  

    <div class="go">
      <i class="fas fa-paper-plane"></i>
    </div>
  </div>
<%} %>
</div>
</body>
</html>