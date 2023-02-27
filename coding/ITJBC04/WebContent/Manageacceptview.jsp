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
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>


<style>
a{
text-decoration:none;
color:red;
font-size:30px;
 font-weight: bold;
}
</style>

<body>
<center>
<div class="mydiv">
<a href="managementhome.jsp">Back</a>
</div>
</center>
<table class="table table-dark table-striped">
 <thead>
    <tr>
      <th scope="col">Title</th>
      <th scope="col">Task</th>
      <th scope="col">Filename</th>
      <th scope="col">Staff</th>
      <th scope="col">Tl Email</th>
    </tr>
    
  </thead>
    <%
       
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `bc04`.`task` where status='Accepted'");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	
    	  
    	   
       %>
	
  <tbody>
    <tr class="table-warning">
      <th ><%=rs.getString(2)%></th>
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(4)%></td>
      <td><%=rs.getString(9)%></td>
      <td><%=rs.getString(5)%></td>
    </tr>
    </tbody>
    	<%} %>
</table>
</body>
</html>