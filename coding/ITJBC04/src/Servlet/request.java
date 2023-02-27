package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.taskbean;
import Imple.Imple;
import Inter.Inter;

/**
 * Servlet implementation class request
 */
@WebServlet("/request")
public class request extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public request() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String tesk=request.getParameter("tesk");
		String des=request.getParameter("des");
		String filename=request.getParameter("filename");

		String tlemail=request.getParameter("tlemail");
		String team=request.getParameter("team");
		String staff=request.getParameter("staff");
		
		taskbean t=new taskbean();
		t.setTask(tesk);
		t.setDes(des);
		t.setFilename(filename);
		t.setTlemail(tlemail);
		t.setTeam(team);
		t.setStaff(staff);
		
	Inter n=new Imple();
	int b=n.task(t);
	if(b==1)
	{
		response.sendRedirect("sucess.jsp");
	}
	else{
		response.sendRedirect("error");
	}
	}

}
