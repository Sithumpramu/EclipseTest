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


public class ItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		int cid=Integer.parseInt( request.getParameter("cid"));
		boolean isTrue=true;
		
		List<Item> Ilist = OrderDBUtil.getItemDetails(cid);
		Category category=OrderDBUtil.getCategoryById(cid);
		
		System.out.println();
		if(isTrue == true) {
			
			session.setAttribute("Ilist", Ilist);
			session.setAttribute("itemCategory", category);
			RequestDispatcher dis = request.getRequestDispatcher("item.jsp");
			dis.forward(request, response);
		}else {
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
