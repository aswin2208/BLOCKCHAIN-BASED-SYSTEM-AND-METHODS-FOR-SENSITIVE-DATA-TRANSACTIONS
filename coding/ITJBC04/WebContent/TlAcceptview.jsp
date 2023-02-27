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


<% String Team=session.getAttribute("tlteam").toString(); 
String tlemail=session.getAttribute("temail").toString();%>
<button onclick="history.back();" class="btn btn-outline-danger" style="float:right;"> Back</button>
<body>
<table class="table table-striped">
 <thead>
    <tr>
      <th scope="col">Title</th>
      <th scope="col">Task</th>
      <th scope="col">Filename</th>
      <th scope="col">Staff</th>
    </tr>
    
  </thead>
    <%
       
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `bc04`.`task` where team='"+Team+"' and tlemail='"+tlemail+"' and status='Accepted'");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	
    	  
    	   
       %>
	
  <tbody>
    <tr>
      <th ><%=rs.getString(2)%></th>
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(4)%></td>
      <td><%=rs.getString(9)%></td>
    </tr>
    </tbody>
    	<%} %>
</table>
</body>
</html>