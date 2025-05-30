package servlets_for_html;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

/**
 * Servlet implementation class AttendanceCheckingServlet
 */
@WebServlet("/AttendanceCheckingServlet")
public class AttendanceCheckingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AttendanceCheckingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String name=request.getParameter("name");
		AttendanceCheckingDAO acd=new AttendanceCheckingDAO();
		HashMap<String, Date> map = acd.attendanceStatus(id);
		
		if(map!=null) {
			request.setAttribute("id", id);
			request.setAttribute("name", name);
			request.setAttribute("status", map.keySet());
			request.setAttribute("date", map.values());
			RequestDispatcher dispatcher = request.getRequestDispatcher("AttendanceStatus.jsp");
			dispatcher.forward(request, response);
			
		}else {
			System.out.println("Data not retrieved");
		}
	}

}
