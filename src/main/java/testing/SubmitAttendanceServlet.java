package testing;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class SubmitAttendanceServlet
 */
@WebServlet("/SubmitAttendanceServlet")
public class SubmitAttendanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubmitAttendanceServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] presentIds = request.getParameterValues("attendance");  
        String[] allIds = request.getParameterValues("allIds");          
        String date = request.getParameter("date");

        SubmitAttendanceDAO sad = new SubmitAttendanceDAO();
        int data = sad.markAttendance(presentIds, allIds, date);

        if (data > 0) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("AttendanceUpdated.jsp");
			dispatcher.forward(request, response);
		} else {
			System.out.println("Attendance not updated");
		}
    }


}
