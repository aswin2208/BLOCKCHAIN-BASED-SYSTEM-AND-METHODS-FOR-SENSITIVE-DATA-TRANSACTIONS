<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.IOException"%>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.annotation.WebServlet"%>
<%@ page import="javax.servlet.http.HttpServlet"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>

<%@ page import="Bean.taskbean" %>
<%@ page import="Imple.Imple" %>
<%@ page import="Inter.Inter"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <%


   String task=request.getParameter("task");
	String des=request.getParameter("des");
	String filename=request.getParameter("filename");

	String tlemail=request.getParameter("tlemail");
	String team=request.getParameter("team");
	String staff=request.getParameter("staff");
	
	taskbean t=new taskbean();
	t.setTask(task);
	t.setDes(des);
	t.setFilename(filename);
	t.setTlemail(tlemail);
	t.setTeam(team);
	t.setStaff(staff);
	
Inter n=new Imple();
int b=n.task(t);
if(b==1)
{
	response.sendRedirect("staffmain.jsp");
}
else{
	response.sendRedirect("error");
}






%>

</body>
</html>