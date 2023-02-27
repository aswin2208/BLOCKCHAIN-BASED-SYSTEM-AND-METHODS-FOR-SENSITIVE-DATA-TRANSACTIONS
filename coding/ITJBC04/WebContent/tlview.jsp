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
table{
width:100%;
}
</style>
 <%String email=session.getAttribute("temail").toString(); %> 
 <button onclick="goBack()" class="btn btn-outline-primary" style="float:right;">Go Back</button><br><br>
<body>

<center>
  <div class="container-fluid">  
<table class="table  table-hover table-dark">
 <thead>
    <tr class="table-active">
      <th style="text-align: center;">Title</th>
      <th style="text-align: center;">Description</th>
      <th style="text-align: center;">Filename</th>
      <th style="text-align: center;">TeamLeader</th>
 
    </tr>
  </thead>
 


	
       <%
       
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `bc04`.`tlfileadd` where tlmail='"+email+"'");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	
    	  
    	   
       %>
	

	


     <tr class="table-secondary">
     <td style="text-align: center;"><%=rs.getString(2)%></td>
      <td style="text-align: center;"><%= rs.getString(3) %></td>
       <td style="text-align: center;"><%=  rs.getString(4) %></td>
 <td style="text-align: center;"><%=  rs.getString(10) %></td>


      <%-- <td><a href="suggest.jsp?name=<%=rs.getString(2)%>&&age=<%=rs.getString(3)%>&&email=<%=rs.getString(4)%>&&doctor=<%=rs.getString(7)%>&&description=<%=rs.getString(8)%>"><button class="btn btn-primary">SUGGEST</button></a></td> --%>
     </tr>
	<%} %>






</table>

</div>
</center>

</body>
<script>
$(window).on("load resize ", function() {
	  var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
	  $('.tbl-header').css({'padding-right':scrollWidth});
	}).resize();
</script>
<script>
function goBack() {
  window.history.back();
}
</script>
</html>