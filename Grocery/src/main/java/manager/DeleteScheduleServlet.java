package manager;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteScheduleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String primaryvaluetodelete = request.getParameter("DeliveryNo");
		
		boolean s;
		
		s = DButil.Deletescheduleitems(primaryvaluetodelete);
		
		if(s==true) {
			RequestDispatcher dis = request.getRequestDispatcher("Dashbord.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("DeliverManagement.jsp");
			dis2.forward(request, response);
		}
	}

}
