
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


public class TrackinginfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	    String  Orderno = request.getParameter("orderno");
		String Packageno = request.getParameter("packageno");
		String Trackingno = request.getParameter("trackingno");
		
		
		
		
		boolean ss;
		
		ss = DButil.insertdeliverydata(Orderno, Packageno, Trackingno);
		
		System.out.println(Orderno);
		System.out.println(Packageno);
		
		
		
		if(ss==true) {
			RequestDispatcher dis = request.getRequestDispatcher("yes.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("No.jsp");
			dis2.forward(request, response);
		}
	}

}



