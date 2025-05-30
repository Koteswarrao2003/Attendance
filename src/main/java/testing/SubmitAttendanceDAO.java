package testing;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import connection.Connection_Class;

public class SubmitAttendanceDAO {

	public int markAttendance(String presentIds[], String allIds[], String dateStr) {
	    int count = 0;
	    try {
	        Connection_Class con = new Connection_Class();
	        java.sql.Connection connection = con.connect();
	        DateTimeFormatter dtf=DateTimeFormatter.ofPattern("yyyy-MM-dd");
			LocalDate ld=LocalDate.parse(dateStr,dtf);
			Date valueOf = Date.valueOf(ld);

	       
	        String absentQuery = "UPDATE attstudent SET attendence='absent' WHERE id=? AND attdate=?";
	        PreparedStatement absentStmt = connection.prepareStatement(absentQuery);

	        for (String idStr : allIds) {
	            Long id = Long.parseLong(idStr);
	            absentStmt.setLong(1, id);
	            absentStmt.setDate(2, valueOf);
	            count += absentStmt.executeUpdate();
	        }

	        if (presentIds != null) {
	            String presentQuery = "UPDATE attstudent SET attendence='present' WHERE id=? AND attdate=?";
	            PreparedStatement presentStmt = connection.prepareStatement(presentQuery);

	            for (String idStr : presentIds) {
	                Long id = Long.parseLong(idStr);
	                presentStmt.setLong(1, id);
	                presentStmt.setDate(2, valueOf);
	                count += presentStmt.executeUpdate();
	            }
	        }
	    } catch(Exception e) {
	        System.out.println(e.getMessage());
	    }
	    return count;
	}
}
