package com.buddhika.consultant.service.service;

import java.sql.SQLException;
import java.util.List;

import com.buddhika.consultant.service.dao.AppointmentDAO;
import com.buddhika.consultant.service.dao.AppointmentDAOImpl;
import com.buddhika.consultant.service.model.Appointment;

public class AppointmentService {
	
	public static AppointmentService AppointmentServiceObj;
	
	private AppointmentService() {
		
	}
	
	public synchronized static AppointmentService getAppointmentService() {
		if(AppointmentServiceObj == null) {
			AppointmentServiceObj = new AppointmentService();
		}
		
		return AppointmentServiceObj;
	}
	
	private AppointmentDAO getAppointmentDAO() 
	{
		return new AppointmentDAOImpl();
	}
	public boolean addAppointment(Appointment appointment) throws ClassNotFoundException, SQLException {
		return getAppointmentDAO().addAppointment(appointment);
		
	}

	public boolean editAppointment(Appointment appointment) throws ClassNotFoundException, SQLException {
		return getAppointmentDAO().editAppointment(appointment);
	}

	public boolean deleteAppointment(int appointmentID) throws ClassNotFoundException, SQLException {
		return getAppointmentDAO().deleteAppointment(appointmentID);
	}

	public Appointment fetchSingleAppointment(int appointmentID) throws ClassNotFoundException, SQLException {
		return getAppointmentDAO().fetchSingleAppointment(appointmentID);
	}
	
	public List<Appointment> fetchAllAppointment() throws ClassNotFoundException, SQLException {
		return getAppointmentDAO().fetchAllAppointment();
	}

}
