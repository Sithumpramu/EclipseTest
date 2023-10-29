package CustomerOrder;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import CustomerOrder.shoppingCartDBUtil;

public class removeItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String id = request.getParameter("id");
		boolean isTrue;
		
		isTrue = shoppingCartDBUtil.deleteItem(id);
		
		if (isTrue == true) {
			int cartId = Integer.parseInt(id);
		    List<cart> Cartlist = shoppingCartDBUtil.getCartItems(cartId);
		    session.setAttribute("Cartlist", Cartlist);
	        response.sendRedirect(request.getContextPath() + "/shoppingCart.jsp");
			
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
