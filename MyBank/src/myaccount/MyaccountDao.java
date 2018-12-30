package myaccount;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import myaccount.MyaccountModel;

public class MyaccountDao 
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


	public static List<MyaccountModel> getRecords(String acnt)
	{
		List<MyaccountModel> list=new ArrayList<MyaccountModel>();

		try
		{
			Connection con=MyaccountDao.getconnection();
			PreparedStatement ps=con.prepareStatement("SELECT * FROM transaction WHERE Accountno =? ");
			ps.setString(1,acnt);
			ResultSet rs=ps.executeQuery();
			while (rs.next())
			{
				MyaccountModel m=new MyaccountModel();
				m.setId(rs.getString(1));
				m.setAccountno(rs.getString(2));
				m.setAccountname(rs.getString(3));
				m.setOpenalance(rs.getString(4));
				m.setRefernoCheckno(rs.getString(5));
				m.setTransactiondt(rs.getString(6));
				m.setTransactionno(rs.getString(7));
				m.setWithdraw(rs.getString(8));
				m.setDeposit(rs.getString(9));
				m.setTransactiontype(rs.getString(10));
				m.setTotalAmount(rs.getString(11));
				m.setTrperson(rs.getString(12));
				m.setTrpersonmob(rs.getString(13));
				m.setRelation(rs.getString(14));
				m.setCurrentBalance1(rs.getString(15));
				list.add(m);
			}
			con.close();
		}catch(Exception ex){ex.printStackTrace();}
		return list;
	}
}