package manager;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.time.LocalDate;
import java.util.List;
import java.io.IOException;



public class UpdateScheduleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String DeliveryNo = request.getParameter("DeliveryNo");
		String NewDate = request.getParameter("Datee");
		
		LocalDate convereddate= LocalDate.parse(NewDate) ;
		
        boolean s;
		
        
		s = DButil.UpdateSchedule(DeliveryNo,convereddate);
		
		if(s==true) {
			List <DeliverySchedule> sche = DButil.getDeliverySchedule();
			request.setAttribute("sche", sche);
			RequestDispatcher dis = request.getRequestDispatcher("DeliverManagement.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("DeliverManagement.jsp");
			dis2.forward(request, response);
		}
	}

}
