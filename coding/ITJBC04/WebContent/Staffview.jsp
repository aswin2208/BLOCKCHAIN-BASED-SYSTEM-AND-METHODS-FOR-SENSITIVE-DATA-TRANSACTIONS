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

<% String team=session.getAttribute("slteam").toString(); 
String semail=session.getAttribute("semail").toString();
%>
<button onclick="goBack()" class="btn btn-primary" style="float:right;">Go Back</button>

<body>
<center>
  <div class="container-fluid">  
<table class="table table-bordered"><br>
 <thead class="thead-dark" style="align:center;">
    <tr>
      <th scope="col">TITLE</th>
      <th scope="col">DESCRIPTION</th>
      <th scope="col">FILENAME</th>
      <th scope="col">TLMAIL</th>
      <th scope="col">TEAM</th>
        <th scope="col">REQUEST</th>    
    </tr>
  </thead>
 


	
       <%
       
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `bc04`.`tlfileadd` where team='"+team+"' ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	  String name=rs.getString(2);  
    	String age=  rs.getString(3); 
    	String email=rs.getString(4);
    	String doctor=rs.getString(10);
String filename=rs.getString(11);
    	
    	  
    	   
       %>
	

	


     <tr>
     <td style="text-align: center;"><%=rs.getString(2)%></td>
      <td style="text-align: center;"><%= rs.getString(3) %></td>
       <td style="text-align: center;"><%=  rs.getString(4) %></td>
 <td style="text-align: center;"><%=  rs.getString(10) %></td>
 <td style="text-align: center;"><%=  rs.getString(11) %></td>


      <td><a href="req.jsp?task=<%=rs.getString(2)%>&&des=<%=rs.getString(3)%>&&filename=<%=rs.getString(4)%>&&tlemail=<%=rs.getString(10)%>&&team=<%=rs.getString(11)%>&&staff=<%=semail%>"><button class="btn btn-warning" onclick = "fun();" >REQUEST</button></a></td>
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
  
function fun() {  


   alert ("Request sended");  
}  

</script>
</html>