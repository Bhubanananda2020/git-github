package bankaccount;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import bankaccount.BankAccountModel;

public class BankAccountDao 
{
	
	public static Connection accountconnection()
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

	
	public static int savepg(BankAccountModel u)
	{
		int status = 0;
	try 
		{
			Connection con  = accountconnection();
			PreparedStatement ps =con.prepareStatement("INSERT INTO bankaccount (Accountno,Fname,Lname,Gender,Photo,Birthdate,Age,Paddress,Caddress,Email,Mobile,Doctype,Docnum,Fathernm,Mothernm,Fatheroccu,Fatherincome,Occupation,Income,Nomineenm,Nomineeag,Nomineeraltion,Opendt,Acctype,Cardno,Chequebook,Rperson,CurrentBalance  ) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			 ps.setString(1, u.getAccno());
			 ps.setString(2, u.getFnm());
			 ps.setString(3, u.getLnm());
			 ps.setString(4, u.getGend());
			 ps.setString(5, u.getPhoto());
			 ps.setString(6, u.getDob());
			 ps.setString(7, u.getAg());
			 ps.setString(8, u.getPadd());
			 ps.setString(9, u.getCadd());
			 ps.setString(10, u.getEid());
			 ps.setString(11, u.getMob());
			 ps.setString(12, u.getDoctype());
			 ps.setString(13, u.getDocnum());
			 ps.setString(14, u.getFtrnm());
			 ps.setString(15, u.getMtrnm());
			 ps.setString(16, u.getFtroccu());
			 ps.setString(17, u.getFtrincm());
			 ps.setString(18, u.getOccup());
			 ps.setString(19, u.getIncom());
			 ps.setString(20, u.getNmname());
			 ps.setString(21, u.getNmag());
			 ps.setString(22, u.getNmerelation());
			 ps.setString(23, u.getAccopendt());
			 ps.setString(24, u.getAcctyp());
			 ps.setString(25, u.getAcccrdno());
			 ps.setString(26, u.getAcccbno());			 
			 ps.setString(27, u.getRperson());
			 ps.setString(28, u.getCbalace());
			 
					 
			 status = ps.executeUpdate();
			 con.close();
			
		}
		catch (Exception e) 
		{	System.out.println(e);		}
		return status;
	}
	
	
	
	
	
	
	
}
