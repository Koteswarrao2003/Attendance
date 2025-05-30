package servlets_for_html;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;

import connection.Connection_Class;

public class AttendanceCheckingDAO {
	
	public HashMap<String,java.util.Date> attendanceStatus(String id) {
		
		HashMap<String, java.util.Date> hm=new HashMap<String, java.util.Date>();
		try {
			Connection_Class con=new Connection_Class();
			Connection connect = con.connect();
			String query="select attendence,attdate from attstudent where id=?";
			Long sid=Long.parseLong(id);
			
			PreparedStatement ps=connect.prepareStatement(query);
			ps.setLong(1, sid);
			
			ResultSet set = ps.executeQuery();
			
			
			while(set.next()) {
				hm.put(set.getString("attendence"), set.getDate("attdate"));
			}
			
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return hm;
	}
}
