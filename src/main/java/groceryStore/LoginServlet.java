package groceryStore;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import groceryStore.AdminDButill.AdminDButil;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession sessi = request.getSession();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		try {
			Userlogin userdetails=  AdminDButil.Validate(username, password);
			sessi.setAttribute("cusdetails", userdetails);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		RequestDispatcher dis = request.getRequestDispatcher("Dashboard.jsp");
		dis.forward(request, response);
		
		
	}
	{
}

	}


