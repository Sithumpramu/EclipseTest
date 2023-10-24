package manager;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

 class orderdetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		List<orders> orders = DButil.getorderschedule();
		
		request.setAttribute("orders", orders);
		}
		catch(Exception e){
			e.getStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("DeliverManagement.jsp");
		dispatcher.forward(request, response);
 
		}
	}


