package customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import manager.AllOrders;
import manager.DButil;
import manager.DeliverySchedule;
import manager.Drivers;
import manager.Test;
import manager.orders;
import manager.tesst;

import java.io.IOException;
import java.util.List;


public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sessi = request.getSession();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		
		try {
			
			Customer cusdetails =  CustomerDButil.Validate(username, password);
			sessi.setAttribute("cusdetails", cusdetails);
			
			orders order = DButil.getorderschedule();
			sessi.setAttribute("order", order);
			
			List <DeliverySchedule> sche = DButil.getDeliverySchedule();
			sessi.setAttribute("sche", sche);
			
			List <AllOrders> orders= DButil.getallorders();
			sessi.setAttribute("orderss", orders);
			
			List <Drivers> driver = DButil.getDeliveryDrivers();
			sessi.setAttribute("driver", driver);
			
			List <tesst> Tests = DButil.gettestimage();
			sessi.setAttribute("test", Tests);
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		RequestDispatcher dis = request.getRequestDispatcher("Dashbord.jsp");
		dis.forward(request, response);
		
		
	}

}
