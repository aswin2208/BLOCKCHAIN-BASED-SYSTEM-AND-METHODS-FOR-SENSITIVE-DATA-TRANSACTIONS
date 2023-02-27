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
<link rel="stylesheet" href="css/mmain.css">
</head>
<style>

body{

background-image:url(images/9.jpg);


}

a{
text-decoration:none;
}

</style>
<%String team=session.getAttribute("slteam").toString();%> 
<%String email=session.getAttribute("semail").toString(); %>
 <%
       
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT count(*) FROM bc04.manageract where  sfemail='"+email+"' and status='sended'");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	   int cout=rs.getInt(1);  
    	     
    	  
    	   
       %>

<body>
<div class="container">
  <div class="nav">
    <div class="logo"><%=team %>..
    </div>
    <ul>
      <li><a href="Staffview.jsp"><span style="color:white">View </span></a></li>
     <li><a href="Download.jsp"><span style="color:white">Download(<%=cout %>) </span></a></li>

      <li><a href="homepage.jsp"><span style="color:white">Logout</span></a>		</li>
    </ul>
  </div>

  <div class="hero">
    <div class="title"></div>

  <!--   <div class="button">
      About
    </div> -->
  </div>

  

    <div class="go">
      <i class="fas fa-paper-plane"></i>
    </div>
  </div>
	<%} %>
</div>
</body>
</html>