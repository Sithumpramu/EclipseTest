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


public class Testservlett extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ssj = request.getSession();
		try {
		
		
		List <tesst> Tests = DButil.gettestimage();
		ssj.setAttribute("test", Tests);
		
		
		}
		catch(Exception e){
			e.getStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Test.jsp");
		dispatcher.forward(request, response);
 
	}

}
