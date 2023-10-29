package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id  = request.getParameter("id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String Email = request.getParameter("Email");
		String mobile = request.getParameter("mobile");
		String password = request.getParameter("password");
		
		boolean isTrue;
		
		isTrue= UserDBUtil.updateUser(id, fname, lname, Email, mobile, password);
		
		if(isTrue==true)
		{
			
			List<LoginUser> UserDet = UserDBUtil.getUserDetails(id);
			request.setAttribute("UserDet", UserDet);
			
			RequestDispatcher dis=request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request,response);
		}
		else
		{
			List<LoginUser> UserDet = UserDBUtil.getUserDetails(id);
			request.setAttribute("UserDet", UserDet);
			
			RequestDispatcher dis=request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request,response);
		}
	}

}
