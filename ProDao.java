import java.util.*;
import java.sql.*;

public class ProDao {

	public static Connection getConnection(){
		Connection con=null;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
		}catch(Exception e){System.out.println(e);}
		return con;
	}
	public static int save(Pro e){
		int status=0;
		try{
			Connection con=ProDao.getConnection();
			PreparedStatement ps=con.prepareStatement("insert into product905(id,name,quantity) values (crud.nextval,?,?)");
			ps.setString(1,e.getName());
			ps.setString(2,e.getQuantity());
			
			status=ps.executeUpdate();
			
			con.close();
		}catch(Exception ex){ex.printStackTrace();}
		
		return status;
	}
	public static int update(Pro e){
		int status=0;
		try{
			Connection con=ProDao.getConnection();
			PreparedStatement ps=con.prepareStatement("update product905 set name=?,quantity=? where id=?");
			ps.setString(1,e.getName());
			ps.setString(2,e.getQuantity());
			ps.setInt(5,e.getId());
			
			status=ps.executeUpdate();
			
			con.close();
		}catch(Exception ex){ex.printStackTrace();}
		
		return status;
	}
	public static int delete(int id){
		int status=0;
		try{
			Connection con=ProDao.getConnection();
			PreparedStatement ps=con.prepareStatement("delete from product905 where id=?");
			ps.setInt(1,id);
			status=ps.executeUpdate();
			
			con.close();
		}catch(Exception e){e.printStackTrace();}
		
		return status;
	}
	public static Pro getProductById(int id){
		Pro e=new Pro();
		
		try{
			Connection con=ProDao.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from product905 where id=?");
			ps.setInt(1,id);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setQuantity(rs.getString(3));
			}
			con.close();
		}catch(Exception ex){ex.printStackTrace();}
		
		return e;
	}
	public static List<Pro> getAllProducts(){
		List<Pro> list=new ArrayList<Pro>();
		
		try{
			Connection con=ProDao.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from product905");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Pro e=new Pro();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setQuantity(rs.getString(3));
				list.add(e);
			}
			con.close();
		}catch(Exception e){e.printStackTrace();}
		
		return list;
	}
	
}
