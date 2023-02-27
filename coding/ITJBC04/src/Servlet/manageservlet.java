package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Block;
import Bean.taskbean;
import Dbconn.dbconn;
import Imple.Imple;
import Inter.Inter;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import java.sql.ResultSet;


/**
 * Servlet implementation class manageservlet
 */
@WebServlet("/manageservlet")
public class manageservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public manageservlet() {
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
		
		String mkey=request.getParameter("mkey");

String status="Accepted";

		
		String prehash="";
		String afterhash="";
		
		
		String ad="Admin@gmail.com";
		Connection con;
		con=dbconn.create();
		try {
			PreparedStatement pa=con.prepareStatement("SELECT phash,ahash FROM `bc04`.`task`");
			ResultSet rs=pa.executeQuery();
			while(rs.next()){
				prehash=rs.getString(1);
				afterhash=rs.getString(2);
				
			}
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println(afterhash);
		prehash=afterhash;

		 
		 
		 
		Block genesisBlock = new Block("Hi im the first block", "0");

		String phas=genesisBlock.hash;
		
		Block secondBlock = new Block("Yo im the second block",genesisBlock.hash);
		System.out.println("Hash for block 2 : " + secondBlock.hash);
		String aphas=secondBlock.hash;
		
		taskbean ap=new taskbean();
		ap.setManagekey(mkey);
		ap.setStatus(status);
	
		ap.setPhash(prehash);
		ap.setAhash(aphas);
		
		
		Inter r=new Imple();
		int m=r.upk(ap);
		if(m==1){
			response.sendRedirect("homepage.jsp");
			
		}
		else{
			response.sendRedirect("error.jsp");
		}
	}

}
