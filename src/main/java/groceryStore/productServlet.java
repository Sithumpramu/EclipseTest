package groceryStore;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class productServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int CID=Integer.parseInt( request.getParameter("CID"));
		String Name=request.getParameter("Name");
		int Qty=Integer.parseInt( request.getParameter("Qty"));
		int restockLevel=Integer.parseInt( request.getParameter("restockLevel"));
		
		try {
		List<productItem> Itemlist=AdminDButill.getItemDetails(CID, Name, Qty, restockLevel);
		request.setAttribute("iList", Itemlist);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis= request.getRequestDispatcher("Inventorylevels.jsp");
		dis.forward(request, response);
	}

}
