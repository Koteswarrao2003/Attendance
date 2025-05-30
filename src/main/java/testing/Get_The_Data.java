package testing;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.Connection_Class;

public class Get_The_Data {
	public static void main(String[] args) {
		
		Connection_Class con=new Connection_Class();
		try {
			String query="select id,name from student where edu='Bsc'";
			PreparedStatement pst=con.connect().prepareStatement(query);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				String q="insert into attstudent(id,name) values(?,?)";
				PreparedStatement pstatement=con.connect().prepareStatement(q);
				pstatement.setLong(1,rs.getLong("id"));
				pstatement.setString(2, rs.getString("name"));
				pstatement.executeUpdate();
			}
			
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}finally {
			
		}
	}
}
