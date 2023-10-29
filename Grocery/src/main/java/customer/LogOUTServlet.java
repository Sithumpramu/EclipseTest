package customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


public class LogOUTServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sessi = request.getSession();
		
		sessi.invalidate();
		
		response.setHeader("Cache-Control", "no-store");
		response.setHeader("Pragma", "no-cache");


		
		response.sendRedirect("login.jsp");
	}

}
