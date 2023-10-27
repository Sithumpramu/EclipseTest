package groceryStore;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;



public class AddproductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 int cid=0;
		 
		 try {
	         cid = Integer.parseInt(request.getParameter("CID"));
	        } catch (NumberFormatException e) {
	            // handle invalid quantity input
	            System.err.println("Invalid category value");
	        }
		
	        String name = request.getParameter("name");
	        
	       
	        double price = 0.0;
	        
	        try {
	            price = Double.parseDouble(request.getParameter("price"));
	        } catch (NumberFormatException e) {
	            // handle invalid price input
	            System.err.println("Invalid price value");
	        }

	        
	        int quantity = 0;
	        
	        try {
	            quantity = Integer.parseInt(request.getParameter("Quantity"));
	        } catch (NumberFormatException e) {
	            // handle invalid quantity input
	            System.err.println("Invalid quantity value");
	        }
	        
	        int restock = 0;
	        

	        try {
	            restock = Integer.parseInt(request.getParameter("re-stock"));
	        } catch (NumberFormatException e) {
	            // handle invalid restock input
	            System.err.println("Invalid re-stock value");
	        }
	       
	        
	        boolean isTrue;
	        
	        isTrue= AdminDButill.insertItem(cid, name, price, quantity, restock);
	        
	        if(isTrue==true) {
	        	RequestDispatcher dis= request.getRequestDispatcher("Dashboard.jsp");
	        	dis.forward(request, response);
	        }else {
	        	RequestDispatcher dis2= request.getRequestDispatcher("Unsuccess.jsp");
	        	dis2.forward(request, response);
	        }

	}

}
