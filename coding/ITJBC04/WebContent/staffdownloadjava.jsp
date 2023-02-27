<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.io.FileInputStream" %>
    <%@page import="java.io.IOException" %>
    <%@page import="java.io.PrintWriter" %>
    <%@page import="javax.swing.JDialog" %>
    <%@page import="javax.swing.JOptionPane" %>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@ page import="Dbconn.dbconn" %>
<%@ page import="java.sql.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String status="Downloaded"; 
String id=request.getParameter("id");%>
<%
String key1=request.getParameter("fkeyl");

System.out.println("download0000000000000000000===="+key1);  

String key2=request.getParameter("headkey");

System.out.println("download0000000000000000000===="+key2);  
JOptionPane joptionpane =new JOptionPane("CLICK OK");


JDialog jdialog= joptionpane.createDialog("Alert");

jdialog.setAlwaysOnTop(true);

jdialog.show();

String newkey =JOptionPane.showInputDialog("Enter Your filekey");

Connection con;
con=dbconn.create();
if(newkey.equals(key1))

{
	String newkey1 =JOptionPane.showInputDialog("Enter Your filekey");
	if(newkey1.equals(key2))
try
{
	
	 

String realpath = getServletContext().getRealPath("/");
String filepath = realpath.substring(0, realpath.indexOf("."))
		+ "ITJBC04\\WebContent\\Locals\\";


String filename=request.getParameter("fname1");
System.out.println(filename);

/*	 String filepath="E:\\2016 Web\\ITJDM15\\WebContent\\compress\\"+compress+".zip";*/

  response.setContentType("APPLICATION/OCTET-STREAM");   
  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
  
FileInputStream fileInputStream=new FileInputStream(filepath+filename);  
            
  int i;   
  while ((i=fileInputStream.read()) != -1) {  
    out.write(i);   
  }   
  
  fileInputStream.close(); 
}
	
catch(Exception e)
{
	e.printStackTrace();
}


}

else
{
System.out.println("failed");
	
	JOptionPane.showMessageDialog(null, "Sorry Your key is wrong");
	
	response.sendRedirect("Error.jsp");
}		


%>



</body>
</html>