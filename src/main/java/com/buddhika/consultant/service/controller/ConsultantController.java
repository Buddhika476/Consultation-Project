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

import com.buddhika.consultant.service.service.AppointmentService;
import com.buddhika.consultant.service.model.Appointment;


public class ConsultantController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	String message = "";

	private AppointmentService getAppointmentService() {
		return AppointmentService.getAppointmentService();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String actionType = request.getParameter("actiontype");
		
		if(actionType.equals("single")) {
			fetchSingleAppointment(request,response);
		}
		else {
			fetchAllAppointment(request,response);
		}
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String actionType = request.getParameter("actiontype");
		
		if(actionType.equals("edit")) {
			editAppointment(request,response);
		}
		else if(actionType.equals("delete")) {
			deleteAppointment(request,response);
		}
	}
	
	private void editAppointment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			clearMessage();
			
			Appointment appointment = new Appointment();
			
			appointment.setAppointmentID(Integer.parseInt(request.getParameter("appointmentID")));
			appointment.setAppointmentDate(request.getParameter("appointmentDate"));
			appointment.setCountry(request.getParameter("country"));
			appointment.setConsultant(request.getParameter("consultant"));
			
			try {
				if(getAppointmentService().editAppointment(appointment)) {
					message = "The appointment has been successfully updated! product code :" + appointment.getAppointmentID();
				}
				else {
					message = "Failed to update the appointment! product code :" + appointment.getAppointmentID();
				}
			} catch (ClassNotFoundException | SQLException e) {
				message = e.getMessage();		
				}
			
			request.setAttribute("feedbackMessage", message);
			RequestDispatcher rd = request.getRequestDispatcher("consultant-panel.jsp");
			rd.forward(request, response);
		}
	
	private void deleteAppointment(HttpServletRequest request, HttpServletResponse response) throws IOException {
		clearMessage();
		int appointmentID = Integer.parseInt(request.getParameter("appointmentID"));
		try {
			if(getAppointmentService().deleteAppointment(appointmentID)) {
				message = "Appointment successfully deleted! product code:" + appointmentID;
			}
			else {
				message = "Failed to delete the appointment! product code :" + appointmentID;
			}
		} catch (ClassNotFoundException | SQLException e) {
			message = e.getMessage();
		}
		
		//request.setAttribute("feedbackMessage", message);
		//RequestDispatcher rd = request.getRequestDispatcher("search-al-and-delete.jsp");
		//rd.forward(request, response);
		
		HttpSession session = request.getSession();
		session.setAttribute("message", message);
		response.sendRedirect("getappointment?actiontype=all");
		
	}
	
	private void fetchSingleAppointment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		clearMessage();
		
		int appointmentID = Integer.parseInt(request.getParameter("appointmentID"));
		
		try {
			Appointment appointment = getAppointmentService().fetchSingleAppointment(appointmentID);
			if(appointment.getAppointmentID() > 0) {
				request.setAttribute("appointment", appointment);
			}
			else {
				message = "Not record found";
			}
		} catch (ClassNotFoundException | SQLException e) {
			
			message = e.getMessage();
		}
		request.setAttribute("feedbackMessage", message);
		RequestDispatcher rd = request.getRequestDispatcher("getconsult?actiontype=all");
		rd.forward(request, response);
	}
	
	private void fetchAllAppointment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	    clearMessage();
	    
	    List<Appointment> appointmentList = new ArrayList<Appointment>();
	    
	    try {
	        appointmentList = getAppointmentService().fetchAllAppointment();
	        if (!(appointmentList.size() > 0)) {
	            message = "No records found!";
	        }
	       
	    } catch (ClassNotFoundException | SQLException e) {
	        message = e.getMessage();
	    }
	    
	    request.setAttribute("appointmentList", appointmentList);
	    request.setAttribute("feedbackMessage", message);
	    
	    RequestDispatcher rd = request.getRequestDispatcher("consultant-panel.jsp");
	    rd.forward(request, response);
	}

		
	private void clearMessage() {
		message = "";
	}
}



