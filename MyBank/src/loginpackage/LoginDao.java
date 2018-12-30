package loginpackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import transaction.TrasactionModel;


public class LoginDao 
{
	public static Connection getconnection()
	{
		Connection con = null;
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mybank", "root", "");
		}
		catch (Exception e) 
		{	System.out.println(e);	}
		return con;
	}


	public static int savepg(LoginModel u)
	{
		int status = 0;

		try 
		{
			Connection con  = getconnection();
			PreparedStatement ps =con.prepareStatement("INSERT INTO createaccount (Fname,Lname,Age,MobileNo,EmailId,Govid,Usernm,Pswd,Label,Doj) VALUES(?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, u.getFname());
			ps.setString(2, u.getLname());
			ps.setString(3, u.getAge());
			ps.setString(4,u.getMob());
			ps.setString(5,u.getEid());
			ps.setString(6,u.getGid());
			ps.setString(7,u.getUnm());
			ps.setString(8,u.getUpwd());
			ps.setString(9,u.getLb());
			ps.setString(10,u.getDj());
			status = ps.executeUpdate();
		}
		catch (Exception e) 
		{	System.out.println(e);		}
		return status;
	}



	public static LoginModel getRecords(String uname)
	{
		LoginModel m =null;

		try{
			Connection con=getconnection();
			PreparedStatement ps=(PreparedStatement) con.prepareStatement("SELECT * FROM createaccount WHERE Usernm =? ");
			ps.setString(1, uname);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				m=new LoginModel();
				m.setId(rs.getInt(1));
				m.setFname(rs.getString(2));
				m.setLname(rs.getString(3));
				m.setAge(rs.getString(4));
				m.setMob(rs.getString(5));
				m.setEid(rs.getString(6));
				m.setGid(rs.getString(7));
				m.setUnm(rs.getString(8));
				m.setUpwd(rs.getString(9));
				m.setLb(rs.getString(10));
				m.setDj(rs.getString(11));			
			}
		}catch(Exception e){System.out.println(e);}
		return m;
	}

	
	public static List<LoginModel> getAllAccount()
	{
		List<LoginModel> list = new ArrayList<LoginModel>();
		try{
			Connection con=getconnection();
			PreparedStatement ps=(PreparedStatement) con.prepareStatement("SELECT * FROM createaccount");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				LoginModel m=new LoginModel();
				m.setId(rs.getInt(1));
				m.setFname(rs.getString(2));
				m.setLname(rs.getString(3));
				m.setAge(rs.getString(4));
				m.setMob(rs.getString(5));
				m.setEid(rs.getString(6));
				m.setGid(rs.getString(7));
				m.setUnm(rs.getString(8));
				m.setUpwd(rs.getString(9));
				m.setLb(rs.getString(10));
				m.setDj(rs.getString(11));			
				list.add(m);
			}
		}catch(Exception e){System.out.println(e);}
		return list;
	}

	
	
	
	
}