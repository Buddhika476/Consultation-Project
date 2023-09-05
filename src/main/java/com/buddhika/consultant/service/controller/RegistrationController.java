package com.buddhika.consultant.service.controller;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.buddhika.consultant.service.service.UserService;
import com.buddhika.consultant.service.model.User;


public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	String message = "";

	private UserService getUserService() {
		return UserService.getUserService();
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String actionType = request.getParameter("actiontype");
		
		if(actionType.equals("add")){
			addUser(request,response);
		}
		
	}
	
	private void addUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		clearMessage();
		
		User user = new User();
		user.setUsername(request.getParameter("username"));
		user.setEmail(request.getParameter("email"));
		user.setPassword(request.getParameter("password"));
		user.setRole(request.getParameter("role"));
		try {
			if(getUserService().addUser(user)) {
				message = "Registration successfull";
			}
			else {
				message = "faild to Register";
			}
		} catch (ClassNotFoundException | SQLException e) {
			
			message = "fail operation" + e.getMessage();
		}
		
		request.setAttribute("feedbackMessage", message); 
		RequestDispatcher rd = request.getRequestDispatcher("registration.jsp");
		rd.forward(request, response);
		
	}
	
	private void clearMessage() {
		message = "";
	}
}


