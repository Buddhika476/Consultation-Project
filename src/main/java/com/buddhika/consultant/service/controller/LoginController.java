package com.buddhika.consultant.service.controller;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buddhika.consultant.service.model.User;
import com.buddhika.consultant.service.service.UserService;


public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    String message = "";

    private UserService getUserService() {
        return UserService.getUserService();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String actionType = request.getParameter("actiontype");

        if (actionType.equals("login")) {
            loginUser(request, response);
        }

    }

    private void loginUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        clearMessage();
        
        User user  = new User();
        user.setUsername(request.getParameter("username"));
        user.setPassword(request.getParameter("password"));
        user.setRole(request.getParameter("role"));

        try {
            
            if (getUserService().loginUser(user)) {
                
            	if (user.getRole() != null && user.getRole().equals("Seeker")) {
                    
                    message = "Login successful";
                    
                    request.setAttribute("feedbackMessage", message);
                    RequestDispatcher rd = request.getRequestDispatcher("user-home.jsp");
                    rd.forward(request, response);
            	}else if (user.getRole() != null && user.getRole().equals("Consultant")) {
                 
                    message = "Login successful";
                    
                    request.setAttribute("feedbackMessage", message);
                    RequestDispatcher rd = request.getRequestDispatcher("consultant-home.jsp");
                    rd.forward(request, response);
            	}else if (user.getRole() != null && user.getRole().equals("Admin")) {
                    
                    message = "Login successful";
                  
                    request.setAttribute("feedbackMessage", message);
                    RequestDispatcher rd = request.getRequestDispatcher("admin-home.jsp");
                    rd.forward(request, response);
            	}
            	else {
                  
                    message = "Invalid Role";
                }
            } else {
                
                message = "Invalid Credentials";
            }
        } catch (ClassNotFoundException | SQLException e) {
            message = "Login failed: " + e.getMessage();
        }

        request.setAttribute("feedbackMessage", message);
        RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
        rd.forward(request, response);
    }


	private void clearMessage() {
        message = "";
    }
}


