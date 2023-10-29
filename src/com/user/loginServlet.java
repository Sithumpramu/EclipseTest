package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String Email = request.getParameter("Email");
		String password = request.getParameter("password");
		
		try {
		List<LoginUser> UserDet = UserDBUtil.validate(Email, password);
		request.setAttribute("UserDet", UserDet);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		
		RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
		dis.forward(request, response);
		
	}

}
