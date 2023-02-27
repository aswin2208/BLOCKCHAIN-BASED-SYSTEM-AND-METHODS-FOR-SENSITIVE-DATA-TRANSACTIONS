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
table { 
	width: 1000px; 
	border-collapse: collapse; 
	margin:50px auto;
	}

/* Zebra striping */
tr:nth-of-type(odd) { 
	background: #eee; 
	}

th { 
	background: #3498db; 
	color: white; 
	font-weight: bold; 
	}

td, th { 
	padding: 10px; 
	border: 1px solid #ccc; 
	text-align: left; 
	font-size: 18px;
	}


*/
@media 
only screen and (max-width: 760px),
(min-device-width: 768px) and (max-device-width: 1024px)  {

	table { 
	  	width: 100%; 
	}

	
	table, thead, tbody, th, td, tr { 
		display: block; 
	}
	

	thead tr { 
		position: absolute;
		top: -9999px;
		left: -9999px;
	}
	
	tr { border: 1px solid #ccc; }
	
	td { 
		border: none;
		border-bottom: 1px solid #eee; 
		position: relative;
		padding-left: 50%; 
	}

	td:before { 
		position: absolute;
		top: 6px;
		left: 6px;
		width: 45%; 
		padding-right: 10px; 
		white-space: nowrap;
		content: attr(data-column);

		color: #000;
		font-weight: bold;
	}

}
</style>

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
<button onclick="goBack()" class="btn btn-outline-primary" style="float:right;">Go Back</button>
<br>
<center>
  <div class="container-fluid">  
<table class="table  table-hover table-dark" style="text-align: center;">
 <thead>
    <tr>
      <th scope="col">TITLE</th>
       <th scope="col">FILENAME</th>

      <th scope="col">TLMAIL</th>
     
      <th scope="col">TEAM</th>
      <!-- <th scope="col">TL KEY</th> -->
      <th scope="col">STAFF EMAIL</th>
    <!--   <th scope="col">MANAGE KEY</th>
       -->
        <th scope="col">ACCEPTED</th>
    <!--     <th scope="col"> RESPONSE</th>   --> 
             
    </tr>
  </thead>
 
       <%
       
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `bc04`.`task` Where status='TL Response' ");
       
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
 	<%-- <td style="text-align: center;"><%=  rs.getString(7) %></td> --%>
	<td style="text-align: center;"><%=  rs.getString(9) %></td>
 
<%--   <td style="text-align: center;"><%=t6 %></td>  --%>
   <td><a href="manageres.jsp?id=<%=rs.getString(1)%>&&task=<%=rs.getString(2)%>&&filename=<%=rs.getString(4)%>&&tlmail=<%=rs.getString(5)%>&&team=<%=rs.getString(6)%>&&tlkey=<%=rs.getString(7)%>&&semail=<%=rs.getString(9)%>&&mkey=<%=t6%>"><button class="btn btn-primary" onclick="fun();">ACCEPT</button></a></td>
        <%-- <td><a href="Accept.jsp?id=<%=rs.getString(1)%>"><button class="btn btn-primary" >Response</button></a></td> --%>
    
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


	   alert ("Accepted");  
	}  
</script>
</html>