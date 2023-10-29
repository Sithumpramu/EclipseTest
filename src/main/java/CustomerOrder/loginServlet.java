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
import CustomerOrder.cart;


public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String Email = request.getParameter("Email");
		String password = request.getParameter("password");
		HttpSession session=request.getSession();
		
		try {
		List<LoginUser> UserDet = UserDBUtil.validate(Email, password);
		List<Category> Clist = OrderDBUtil.viewItemPage();
		 
	    
	    
		session.setAttribute("Clist", Clist);
		session.setAttribute("UserDet", UserDet);
		
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		
		RequestDispatcher dis = request.getRequestDispatcher("homepage.jsp");
		dis.forward(request, response);
		
	}

}
