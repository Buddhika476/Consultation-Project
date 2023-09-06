package com.buddhika.consultant.service.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.buddhika.consultant.service.service.UserService;
import com.buddhika.consultant.service.model.User;


public class AdminControllerUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	String message = "";

	private UserService getUserService() {
		return UserService.getUserService();
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String actionType = request.getParameter("actiontype");
		
		if(actionType.equals("single")) {
			fetchSingleUser(request,response);
		}
		else {
			fetchAllUser(request,response);
		}
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String actionType = request.getParameter("actiontype");
		
		if(actionType.equals("edit")) {
			editUser(request,response);
		}
		else if(actionType.equals("delete")) {
			deleteUser(request,response);
		}else if(actionType.equals("add")) {
			addUserAdmin(request,response);
		}
	}
	
	private void addUserAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
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
		RequestDispatcher rd = request.getRequestDispatcher("admin-panel.jsp");
		rd.forward(request, response);
		
	}

	private void editUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			clearMessage();
			
			User user = new User();
			
			user.setUserID(Integer.parseInt(request.getParameter("userID")));
			user.setUsername(request.getParameter("username"));
			user.setEmail(request.getParameter("email"));
			user.setPassword(request.getParameter("password"));
			user.setRole(request.getParameter("role"));
			
			try {
				if(getUserService().editUser(user)) {
					message = "The user has been successfully updated! product code :" + user.getUserID();
				}
				else {
					message = "Failed to update the appointment! product code :" + user.getUserID();
				}
			} catch (ClassNotFoundException | SQLException e) {
				message = e.getMessage();		
				}
			
			request.setAttribute("feedbackMessage", message);
			RequestDispatcher rd = request.getRequestDispatcher("admin-panel-user-check.jsp");
			rd.forward(request, response);
		}
	
	private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
		clearMessage();
		int userID = Integer.parseInt(request.getParameter("userID"));
		try {
			if(getUserService().deleteUser(userID)) {
				message = "User successfully deleted! User:" + userID;
			}
			else {
				message = "Failed to delete the User! User:" + userID;
			}
		} catch (ClassNotFoundException | SQLException e) {
			message = e.getMessage();
		}
		
		//request.setAttribute("feedbackMessage", message);
		//RequestDispatcher rd = request.getRequestDispatcher("search-al-and-delete.jsp");
		//rd.forward(request, response);
		
		HttpSession session = request.getSession();
		session.setAttribute("message", message);
		response.sendRedirect("getadusers?actiontype=all");
		
	}
	
	private void fetchSingleUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		clearMessage();
		
		int userID = Integer.parseInt(request.getParameter("userID"));
		
		try {
			User user = getUserService().fetchSingleUser(userID);
			if(user.getUserID() > 0) {
				request.setAttribute("user", user);
			}
			else {
				message = "Not record found";
			}
		} catch (ClassNotFoundException | SQLException e) {
			
			message = e.getMessage();
		}
		request.setAttribute("feedbackMessage", message);
		RequestDispatcher rd = request.getRequestDispatcher("getadusers?actiontype=all");
		rd.forward(request, response);
	}
	
	private void fetchAllUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	    clearMessage();
	    
	    List<User> userList = new ArrayList<User>();
	    
	    try {
	        userList = getUserService().fetchAllUser();
	        if (!(userList.size() > 0)) {
	            message = "No records found!";
	        }
	       
	    } catch (ClassNotFoundException | SQLException e) {
	        message = e.getMessage();
	    }
	    
	    request.setAttribute("userList", userList);
	    request.setAttribute("feedbackMessage", message);
	    
	    RequestDispatcher rd = request.getRequestDispatcher("admin-panel-user-check.jsp");
	    rd.forward(request, response);
	}

		
	private void clearMessage() {
		message = "";
	}
}

