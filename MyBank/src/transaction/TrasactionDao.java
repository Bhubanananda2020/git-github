package transaction;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import myaccount.MyaccountModel;
import transaction.TrasactionModel;

public class TrasactionDao 
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

	public static TrasactionModel getRecords(int acntno)
	{
		TrasactionModel m =null;

		try{
			Connection con=getconnection();

			PreparedStatement ps=(PreparedStatement) con.prepareStatement("SELECT * FROM bankaccount WHERE Accountno =? ");
			ps.setInt(1, acntno);

			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				m=new TrasactionModel();


				m.setAccountno(rs.getInt(1)); 	m.setMothernm(rs.getString(15));
				m.setFname(rs.getString(2));	 	m.setFatheroccu(rs.getString(16));
				m.setLname(rs.getString(3));	 	m.setFatherincome(rs.getString(17));
				m.setGender(rs.getString(4));	 	m.setOccupation(rs.getString(18));
				m.setPhoto(rs.getString(5));	 	m.setIncome(rs.getString(19));
				m.setBirthdate(rs.getString(6)); 	m.setNomineenm(rs.getString(20));
				m.setAge(rs.getString(7));		 	m.setNomineeag(rs.getString(21));
				m.setPaddress(rs.getString(8));  	m.setNomineeraltion(rs.getString(22));
				m.setCaddress(rs.getString(9));  	m.setOpendt(rs.getString(23));
				m.setEmail(rs.getString(10));    	m.setAcctype(rs.getString(24));							 
				m.setMobile(rs.getString(11)); 		m.setCardno(rs.getString(25));				 
				m.setDoctype(rs.getString(12)); 	m.setChequebook(rs.getString(26));					 
				m.setDocnum(rs.getString(13));  	m.setRperson(rs.getString(27));
				m.setFathernm(rs.getString(14));	m.setCurrentBalance(rs.getString(28));



			}
		}catch(Exception e){System.out.println(e);}
		return m;
	}

	public static List<TrasactionModel> getAllAccount()
	{
		List<TrasactionModel> list = new ArrayList<TrasactionModel>();
		try{
			Connection con=getconnection();
			PreparedStatement ps=(PreparedStatement) con.prepareStatement("SELECT * FROM bankaccount");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				TrasactionModel m=new TrasactionModel();

				m.setAccountno(rs.getInt(1)); 	m.setMothernm(rs.getString(15));
				m.setFname(rs.getString(2));	 	m.setFatheroccu(rs.getString(16));
				m.setLname(rs.getString(3));	 	m.setFatherincome(rs.getString(17));
				m.setGender(rs.getString(4));	 	m.setOccupation(rs.getString(18));
				m.setPhoto(rs.getString(5));	 	m.setIncome(rs.getString(19));
				m.setBirthdate(rs.getString(6)); 	m.setNomineenm(rs.getString(20));
				m.setAge(rs.getString(7));		 	m.setNomineeag(rs.getString(21));
				m.setPaddress(rs.getString(8));  	m.setNomineeraltion(rs.getString(22));
				m.setCaddress(rs.getString(9));  	m.setOpendt(rs.getString(23));
				m.setEmail(rs.getString(10));    	m.setAcctype(rs.getString(24));							 
				m.setMobile(rs.getString(11)); 		m.setCardno(rs.getString(25));				 
				m.setDoctype(rs.getString(12)); 	m.setChequebook(rs.getString(26));					 
				m.setDocnum(rs.getString(13));  	m.setRperson(rs.getString(27));
				m.setFathernm(rs.getString(14));	m.setCurrentBalance(rs.getString(28));
				list.add(m);
			}
		}catch(Exception e){System.out.println(e);}
		return list;
	}

	public static int delete(TrasactionModel mz){
		int status=0;
		try
		{
			Connection con=getconnection();
			PreparedStatement ps=(PreparedStatement) con.prepareStatement("delete from bankaccount where Accountno=?");
			ps.setInt(1,mz.getAccountno());
			
			System.out.println(mz.getAccountno());
			System.out.println(ps);
			
			status=ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			System.out.println(e);}
		return status;
	}	












}
