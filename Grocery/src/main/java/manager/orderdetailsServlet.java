package manager;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

 class orderdetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    List<orders> orderList = DButil.getorderschedule();
        
        if (orderList != null) {
            request.setAttribute("orderList", orderList);
            RequestDispatcher dis = request.getRequestDispatcher("yes.jsp");
            dis.forward(request, response);
        } else {
            // Handle the case where no data is retrieved or an error occurred
            RequestDispatcher dis2 = request.getRequestDispatcher("ErrorPage.jsp");
            dis2.forward(request, response);
        }
        
        
        
        
		}
	}


