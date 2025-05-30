package servlets_for_html;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class Student_Login_Servlet
 */
@WebServlet("/Employee_Login_Servlet")
public class Employee_Login_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Employee_Login_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		long long1 = Long.parseLong(userid);
		
		EmployeeLoginBean slb=new EmployeeLoginBean();
		slb.setId(long1);
		slb.setPassword(password);
		
		Employee_Login_DAO sld=new Employee_Login_DAO();
		boolean data = sld.getData(slb);
		if(data) {
			request.setAttribute("id", slb.getId());
			request.setAttribute("name", slb.getName());
			request.setAttribute("email", slb.getEmail());
			request.setAttribute("number", slb.getMnumber());
			request.setAttribute("dob", slb.getDob());
			request.setAttribute("des", slb.getDes());
			request.setAttribute("address", slb.getAddress());
			RequestDispatcher dispatcher = request.getRequestDispatcher("emplogin.jsp");
			dispatcher.forward(request, response);
		}
	}

}
