package testing;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;

import connection.Connection_Class;

public class RetrieveData {

    public HashMap<Long, String> getTheData(String edu,String date) {
        Connection_Class con = new Connection_Class();
        try {
            String query = "select id,name from student where lower(edu)=lower(?)";
            Connection connect = con.connect();
            PreparedStatement pst = connect.prepareStatement(query);
            pst.setString(1, edu);
            ResultSet rs = pst.executeQuery();
            
            HashMap<Long, String> map = new HashMap<>();
            while (rs.next()) {
            	String q="insert into attstudent(id,name,attdate) values(?,?,?)";
				PreparedStatement pstatement=connect.prepareStatement(q);
				long id = rs.getLong("id");
				String name = rs.getString("name");
				pstatement.setLong(1,id);
				pstatement.setString(2, name);
				
				DateTimeFormatter dtf=DateTimeFormatter.ofPattern("yyyy-MM-dd");
				LocalDate ld=LocalDate.parse(date,dtf);
				Date valueOf = Date.valueOf(ld);
				pstatement.setDate(3, valueOf);
				pstatement.executeUpdate();
                map.put(id, name);
            }
            return map;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
        }
        return null;
    }
}
