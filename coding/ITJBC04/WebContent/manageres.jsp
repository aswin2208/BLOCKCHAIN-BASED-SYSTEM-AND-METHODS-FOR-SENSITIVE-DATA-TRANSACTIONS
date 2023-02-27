<%@ page import="Dbconn.dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%@ page import="Bean.Block" %> 
<%@ page import="Bean.managebean" %> 
<%@ page import="Imple.Imple" %> 
<%@ page import="Inter.Inter" %> 
 <%@ page import="java.io.IOException"%>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.annotation.WebServlet"%>
<%@ page import="javax.servlet.http.HttpServlet"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String id=request.getParameter("id");
 String task=request.getParameter("task");
String filename=request.getParameter("filename");
String tlmail=request.getParameter("tlmail");
String team=request.getParameter("team");
String tlkey=request.getParameter("tlkey");
/* String semail=request.getParameter("semail"); */
String mkey=request.getParameter("mkey");
String prehash="";
String afterhash="";
String status="Accepted";
String ad=request.getParameter("semail");
Connection con;
con=dbconn.create();
try {
	
	PreparedStatement pa=con.prepareStatement("SELECT phash,ahash FROM `bc04`.`manageract` where mail='"+ad+"'");
	ResultSet rs=pa.executeQuery();
	
	while(rs.next()){
		prehash=rs.getString(1);
		afterhash=rs.getString(2);
		
	}
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE bc04.task set status='"+status+"' where idtask='"+id+"' ");
}	 
 catch (SQLException e1) {
	// TODO Auto-generated catch block
	e1.printStackTrace();
}


System.out.println(afterhash);
prehash=afterhash;

 
 
 
Block genesisBlock = new Block("Hi im the first block", "0");

String phas=genesisBlock.hash;

Block secondBlock = new Block("Yo im the second block",genesisBlock.hash);
System.out.println("Hash for block 2 : " + secondBlock.hash);
String aphas=secondBlock.hash; 
		
		managebean ap=new managebean();
	
		ap.setTask(task);
		ap.setFilename(filename);
		ap.setTlemail(tlmail);
		ap.setTeam(team);
		ap.setTkey(tlkey);
	ap.setSemail(ad);
		ap.setMkey(mkey);
		ap.setMail(ad);
		
	
		ap.setPhash(prehash);
		ap.setAhash(aphas);
		
		
		Inter r=new Imple();
		int m=r.mkey(ap);
		if(m==1){
			response.sendRedirect("managementhome.jsp");
			
		}
		else{
			response.sendRedirect("error1.jsp");
		}
		
	
	
%>
</body>
</html>