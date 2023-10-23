
package customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class DeliveryDataservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	    String  Orderno = request.getParameter("orderno");
		String Packageno = request.getParameter("packageno");
		String Trackingno = request.getParameter("trackingno");
		
		
		boolean ss;
		
		ss = CustomerDButil.insertdeliverydata(Orderno, Packageno, Trackingno);
		
		if(ss==true) {
			RequestDispatcher dis = request.getRequestDispatcher("Deliver.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Delivernot.jsp");
			dis2.forward(request, response);
		}
	}

}



