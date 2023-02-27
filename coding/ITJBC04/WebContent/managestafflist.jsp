<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="Dbconn.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css1/bootstrap.min.css">
<title>Insert title here</title>
</head>

String team=request.getParameter("teammember");

<body style="background:red;">

<div class="container">
<div class="row">


       <%
       String team=request.getParameter("teammember");
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `bc04`.`staffreg` where team='"+team+"' ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
 
    	String image=rs.getString(7);
    	  
    	   
       %>
<div class="col-md-4">
<div class="card">
	

	  <div class="card-body">

	  <p class="card-text"><img class="card-img-top" src="Local/<%=image %>" width="40" height="150" alt="Card image cap"></p>
	  
    <p class="card-text"> Name : <%=rs.getString(2)%></p>
    <p class="card-text">Email :<%=rs.getString(3)%></p>
    <p class="card-text">Mobile :<%=rs.getString(4)%></p>
    <p class="card-text">Picture :<%=rs.getString(5)%></p>    
    
     <a href="removestaff.jsp?id=<%=rs.getString(1)%>"><button class="btn btn-primary">Remove </button></a>
      
    
      </div>
      </div>
      </div>

	<%} %>
	</div>
 </div>
</body>
</html>