package com.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String FName = request.getParameter("fname");
		String LName = request.getParameter("lname");
		String Email = request.getParameter("Email");
		String Mobile = request.getParameter("mobile");
		String Password = request.getParameter("password");
		
		boolean isTrue;
		
		isTrue = UserDBUtil.insertUser(FName, LName, Email, Mobile, Password);
		
		if(isTrue == true)
		{
			RequestDispatcher dis = request.getRequestDispatcher("Success.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("Unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
