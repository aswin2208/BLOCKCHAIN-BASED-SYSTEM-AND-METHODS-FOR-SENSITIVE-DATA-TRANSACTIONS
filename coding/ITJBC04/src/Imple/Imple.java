package Imple;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



import Bean.managebean;
import Bean.sregbean;
import Bean.taskbean;
import Bean.tlfilebean;
import Bean.tlregbean;
import Dbconn.dbconn;
import Inter.Inter;

public class Imple implements Inter {

	Connection con;
	@Override
	public int tlreg(tlregbean tb) {
		// TODO Auto-generated method stub
		
		int reg=0;
		
		con=dbconn.create();
		
		try {
 			
				PreparedStatement ps=con.prepareStatement("INSERT INTO bc04.tlregister VALUES(id,?,?,?,?,?,?,?)");
				ps.setString(1, tb.getName());
				ps.setString(2, tb.getEmail());
				ps.setString(3, tb.getMobile());
				ps.setString(4, tb.getPassword());
				ps.setString(5, tb.getCpassword());
				ps.setString(6, tb.getImage());
				ps.setString(7, tb.getTeam());
				
				reg=ps.executeUpdate();

} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
		
return reg;
	}
	@Override
	public boolean tlog(tlregbean tb) {
		// TODO Auto-generated method stub
		boolean log=false;
		 
		con=dbconn.create();
		
		 try {
				PreparedStatement ps=con.prepareStatement("SELECT * FROM `bc04`.`tlregister` where team=? and email=? and password=?");
				ps.setString(1, tb.getTeam());
				ps.setString(2, tb.getEmail());
				ps.setString(3, tb.getPassword());
				
				ResultSet rs=ps.executeQuery();
				log=rs.next();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return log;

	}
	@Override
	public int tlf(tlfilebean tf) {
		// TODO Auto-generated method stub
		
		int dd=0;
		try
		{
			 con=dbconn.create();
			 PreparedStatement ps=con.prepareStatement("INSERT INTO bc04.tlfileadd VALUES(id,?,?,?,?,?,?,?,?,?,?)");
			 ps.setString(1, tf.getTitle());
			 ps.setString(2, tf.getDescription());
			 ps.setString(3, tf.getFilename());
			 ps.setString(4, tf.getFiletype());
			 ps.setString(5, tf.getFilesize());
			 ps.setString(6, tf.getFilecontent());
			 ps.setString(7, tf.getEncrypt());
			 ps.setString(8, tf.getDecrypt());
			 ps.setString(9, tf.getTlmail());
			 ps.setString(10, tf.getTeam());
			 dd=ps.executeUpdate();	
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return dd;
	}
	@Override
	public int sreg(sregbean sb) {
int reg=0;
		
		con=dbconn.create();
		
		try {
 			
				PreparedStatement ps=con.prepareStatement("INSERT INTO bc04.staffreg VALUES(id,?,?,?,?,?,?,?)");
				ps.setString(1, sb.getName());
				ps.setString(2, sb.getEmail());
				ps.setString(3, sb.getMobile());
				ps.setString(4, sb.getPassword());
				ps.setString(5, sb.getCpassword());
				ps.setString(6, sb.getImage());
				ps.setString(7, sb.getTeam());
				
				reg=ps.executeUpdate();

} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
return reg;

}
	@Override
	public boolean slog(sregbean sl) {
		boolean log=false;
		 
		con=dbconn.create();
		
		 try {
				PreparedStatement ps=con.prepareStatement("SELECT * FROM `bc04`.`staffreg` where team=? and email=? and password=?");
				ps.setString(1, sl.getTeam());
				ps.setString(2, sl.getEmail());
				ps.setString(3, sl.getPassword());
				
				ResultSet rs=ps.executeQuery();
				log=rs.next();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return log;

	}
	@Override
	public int task(taskbean t) {
		int dd=0;
		try
		{
			 con=dbconn.create();
			 PreparedStatement ps=con.prepareStatement("INSERT INTO bc04.task VALUES(idtask,?,?,?,?,?,?,?,?)");
			 ps.setString(1, t.getTask());
			 ps.setString(2, t.getDes());
			 ps.setString(3, t.getFilename());
			 ps.setString(4, t.getTlemail());
			 ps.setString(5, t.getTeam());
			 ps.setString(6, t.getTlkey());
			 ps.setString(7, "Request");
			 ps.setString(8, t.getStaff());
			 dd=ps.executeUpdate();	
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return dd;
	}
	@Override
	public int upk(taskbean u) {
		int update=0;
		try
		{
			con=dbconn.create();
			PreparedStatement ps = con.prepareStatement("UPDATE bc04.task  SET status='"+u.getStatus()+"' where idtask='"+u.getId()+"'");
			update=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return update;
	}
	@Override
	public int mkey(managebean mb) {
		int dd=0;
		try
		{
			 con=dbconn.create();
			 PreparedStatement ps=con.prepareStatement("INSERT INTO bc04.manageract VALUES(id,?,?,?,?,?,?,?,?,?,?,?)");
			 ps.setString(1, mb.getTask());
			 ps.setString(2, mb.getFilename());
			 ps.setString(3, mb.getTlemail());
			 ps.setString(4, mb.getTeam());
			 ps.setString(5, mb.getTkey());
			 ps.setString(6, mb.getSemail());
			 ps.setString(7, mb.getMkey());
			 ps.setString(8, mb.getPhash());
			 ps.setString(9, mb.getAhash());
			ps.setString(10, mb.getMail());
		
			 ps.setString(11, "sended");
			 dd=ps.executeUpdate();	
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return dd;
	}
}
