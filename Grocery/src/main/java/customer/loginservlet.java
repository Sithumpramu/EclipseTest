package customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//cating the username and pw from view
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		try {
			List<Customer> cusdetails =  CustomerDButil.Validate(username, password);
			request.setAttribute("cusdetails", cusdetails);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
		dis.forward(request, response);
		
	}

}
