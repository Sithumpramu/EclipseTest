package CustomerOrder;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class shoppingCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher dis = request.getRequestDispatcher("item.jsp");
		dis.forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		int cartId=1;
		int id=Integer.parseInt( request.getParameter("id"));
	    String name =  request.getParameter("name");
	    Double price= new Double(request.getParameter("price"));
		
		boolean isTrue;
		
		isTrue = shoppingCartDBUtil.addtoCart(id,price);
		
		if (isTrue == true) {
		    List<cart> Cartlist = shoppingCartDBUtil.getCartItems(id);
		    session.setAttribute("Cartlist", Cartlist);
			response.sendRedirect("./shoppingCartServlet");
			
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
