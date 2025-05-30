package servlets_for_html;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import connection.Connection_Class;

public class Stu_Register_DAO {

	public long connect(Stu_Register_Bean stb)
	{
		try {
			Connection_Class con=new Connection_Class();
			Connection connect = con.connect();
			RandomID rid=new RandomID();
			String insert="INSERT INTO student (id, name, number, email, password, dob, edu, address) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement ps=connect.prepareStatement(insert);
			long id = rid.getId();
			ps.setLong(1, id);
			ps.setString(2, stb.getName());
			ps.setLong(3, stb.getNumber());
			ps.setString(4, stb.getEmail());
			ps.setString(5, stb.getPassword());
			
			DateTimeFormatter dtf=DateTimeFormatter.ofPattern("yyyy-MM-dd");
			String dob = stb.getDob();
			
			LocalDate ld=LocalDate.parse(dob,dtf);
			
			System.out.println(ld);
			Date valueOf = Date.valueOf(ld);
			ps.setDate(6, valueOf);
			ps.setString(7, stb.getEdu());
			ps.setString(8, stb.getAddress());
			
			int update = ps.executeUpdate();
			
			return update > 0 ? id : -1;
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return 0;
		}
	}
}
