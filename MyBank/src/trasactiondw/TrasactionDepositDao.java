package trasactiondw;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;



public class TrasactionDepositDao 
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
	
	
	
	public static int savepg(TrasactionDepositModel u)
	{
		int status = 0;

		try 
		{
			Connection con  = getconnection();
			
			PreparedStatement ps =con.prepareStatement("INSERT INTO transaction (Id,Accountno,Accountname,Openalance,RefernoCheckno,Transactiondt,Transactionno,Withdraw,Deposit,Transactiontype,TotalAmount,Trperson,Trpersonmob,Relation,CurrentBalance1) VALUES (null,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, u.getAccountno());
			ps.setString(2, u.getAccountname());
			ps.setString(3, u.getOpenalance());
			ps.setString(4, u.getRefernoCheckno());
			ps.setString(5, u.getTransactiondt());
			ps.setString(6, u.getTransactionno());
			ps.setString(7, u.getWithdraw());
			ps.setString(8, u.getDeposit());
			ps.setString(9, u.getTransactiontype());
			ps.setString(10, u.getTotalAmount());
			ps.setString(11, u.getTrperson());
			ps.setString(12, u.getTrpersonmob());
			ps.setString(13, u.getRelation());
			ps.setString(14, u.getCbal());

			status = ps.executeUpdate();
			
		}
		catch (Exception e) 
		{	System.out.println(e);		}
		return status;
	}
	
	
	
	
	
}
