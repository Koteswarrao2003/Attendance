package passDate;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import connection.*;

public class InsertDate {
	public static void main(String[] args) {
		try {
			Connection_Class con=new Connection_Class();
			Connection connect = con.connect();
			String insert="insert into datest(id,name,dateofbirth) values(?,?,?)";
			PreparedStatement st = connect.prepareStatement(insert);
			st.setInt(1, 1);
			st.setString(2, "geetha");
			
			DateTimeFormatter dtf=DateTimeFormatter.ofPattern("dd-MM-yyyy");
			LocalDate ld=LocalDate.parse("28-10-2003",dtf);
			Date valueOf = Date.valueOf(ld);
			
			st.setDate(3, valueOf);
			
			int update = st.executeUpdate();
			
			if(update>0)
				System.out.println("Inserted");
			else
				System.out.println("not inserted");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
