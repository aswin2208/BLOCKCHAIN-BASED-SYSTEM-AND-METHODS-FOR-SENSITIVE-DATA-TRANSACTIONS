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
<link rel="stylesheet" href="css1/bootstrap.min.css">
</head>

<% String team=session.getAttribute("tlteam").toString(); 
String temail=session.getAttribute("temail").toString();
%>
<%
		Random r1=new Random(); 

		 String key2="ABCDEFGH123456789";
		 char c5=key2.charAt(r1.nextInt(key2.length()));
		 char c6=key2.charAt(r1.nextInt(key2.length()));
		 char c7=key2.charAt(r1.nextInt(key2.length()));
		 char c8=key2.charAt(r1.nextInt(key2.length()));
		 char c9=key2.charAt(r1.nextInt(key2.length()));
		 String t6=""+c5+""+c6+""+c7+""+c8+""+c9;
		 %>
<body>
<button onclick="goBack()" class="btn btn-outline-primary" style="float:right;">Go Back</button><br><br>
<center>
  <div class="container-fluid">  
<table class="table  table-hover table-dark">
 <thead>
    <tr>
      <th scope="col">TITLE</th>
       <th scope="col">FILENAME</th>

      <th scope="col">TLMAIL</th>
     
      <th scope="col">TEAM</th>
      <th scope="col">TL KEY</th>
      <th scope="col">STAFF EMAIL</th>
        <th scope="col">TL RESPONSE</th>    
    </tr>
  </thead>
 


	
       <%
       
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `bc04`.`task` where team='"+team+"' and tlemail='"+temail+"' and status='Request' ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	  String name=rs.getString(2);  
    	String age=  rs.getString(3); 
    	String email=rs.getString(4);
    

    	
    	  
    	   
       %>
	

	


     <tr class="table-secondary">
     <td style="text-align: center;"><%=rs.getString(2)%></td>
      <td style="text-align: center;"><%= rs.getString(4) %></td>
       <td style="text-align: center;"><%=  rs.getString(5) %></td>
 <td style="text-align: center;"><%=  rs.getString(6) %></td>
  <td style="text-align: center;"><%=t6 %></td> 
   <td style="text-align: center;"><%=rs.getString(9) %></td> 
 

   <td><a href="RequestView.jsp?idtask=<%=rs.getString(1)%>&&tlkey=<%=t6%>"><button class="btn btn-primary" onclick="fun();">ACCEPT</button></a></td>
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


	   alert ("Reqest Accepted");  
	}  
</script>
</html>