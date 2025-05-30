package testing;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

@WebServlet("/StudentResult")
public class StudentResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentResult() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String edu = request.getParameter("edu");
		String date = request.getParameter("date");
		
		RetrieveData rd=new RetrieveData();
		HashMap<Long, String> data = rd.getTheData(edu,date);
		
		if(data!=null) {
			
			request.setAttribute("id", data.keySet());
			request.setAttribute("name", data.values());
			request.setAttribute("date", date);
			RequestDispatcher dispatcher = request.getRequestDispatcher("Retrieve.jsp");
			dispatcher.forward(request, response);
			
		}
	}

}
