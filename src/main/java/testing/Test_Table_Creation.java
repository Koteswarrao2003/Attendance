package testing;

import java.sql.Statement;

import connection.Connection_Class;

public class Test_Table_Creation {
	public static void main(String[] args) {
		
		Connection_Class con=new Connection_Class();
		try
		{
			Statement st=con.connect().createStatement();
			String query="create table AttStudent(id bigint, name varchar, AttDate date, attendence varchar)";
			st.execute(query);
			System.out.println("Table created");
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}finally {
			
		}
		
	}
}
