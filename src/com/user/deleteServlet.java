package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String id = request.getParameter("id");
			
			boolean isTrue;
			
			isTrue= UserDBUtil.deleteUser(id);
			
			if(isTrue==true)
			{
				RequestDispatcher dispatcher=request.getRequestDispatcher("newSignUp.jsp");
				dispatcher.forward(request,response);
			}
			else {
				List<LoginUser> UserDet = UserDBUtil.getUserDetails(id);
				request.setAttribute("UserDet", UserDet);
				
				RequestDispatcher dispatcher=request.getRequestDispatcher("useraccount.jsp");
				dispatcher.forward(request,response);
			}
			
	}

}
