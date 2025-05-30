package servlets_for_html;

import java.sql.Statement;

import connection.Connection_Class;



public class Student_Table_Creation {
	
	public static void main(String[] args) {
		
		Connection_Class conn=new Connection_Class();
		try
		{
			Statement st=conn.connect().createStatement();
			String TableCreation="create table student(id bigint primary key,name varchar(50) not null,number bigint,email varchar(50) unique,password varchar(10),dob date,edu varchar(50),address varchar(50),attendence varchar(20))";
			st.execute(TableCreation);
			System.out.println("Table created Successfully");
			
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
