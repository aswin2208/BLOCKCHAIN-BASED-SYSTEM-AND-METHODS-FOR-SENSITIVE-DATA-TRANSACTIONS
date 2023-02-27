<%@ page import="Dbconn.dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%

String id=request.getParameter("id");


try{
	Connection con=dbconn.create();
	Statement st=con.createStatement();
	st.executeUpdate("DELETE FROM bc04.staffreg where id='"+id+"' ");
	response.sendRedirect("sucees.jsp?valid");
}
catch(Exception e)
{
	System.out.print(e);
	response.sendRedirect("signup.jsp?msg=invaild");
}
%>