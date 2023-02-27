package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.tlregbean;
import Imple.Imple;
import Inter.Inter;


/**
 * Servlet implementation class TlLogServlet
 */
@WebServlet("/TlLogServlet")
public class TlLogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TlLogServlet() {
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
		
		String team=request.getParameter("team");
		System.out.println("team: "+team);
		
		HttpSession sess1=request.getSession();
		sess1.setAttribute( "tlteam",team);
		
		String name=request.getParameter("mail");
		System.out.println("username: "+name);
		
		HttpSession sess=request.getSession();
		sess.setAttribute( "temail",name);
	
		
		String pass=request.getParameter("password");
		System.out.println("password: "+pass);
		
		
		
		
		tlregbean ur=new tlregbean();
		ur.setTeam(team);
		ur.setEmail(name);
		ur.setPassword(pass);
		
		
		Inter in=new Imple();
		boolean log=in.tlog(ur);
		
		if(log==true){
			response.sendRedirect("tlhome.jsp");
		}
		else{
			response.sendRedirect("error1.jsp");
		}
		
		
		
	}

}
