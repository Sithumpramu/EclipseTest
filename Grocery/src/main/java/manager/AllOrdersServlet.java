package manager;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

public class AllOrdersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ss = request.getSession();
		try {
	
		
		List <AllOrders> orders= DButil.getallorders();
		ss.setAttribute("orderss", orders);
		
		}
		catch(Exception e){
			e.getStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("OrderManagement.jsp");
		dispatcher.forward(request, response);
 
		
	}

}
