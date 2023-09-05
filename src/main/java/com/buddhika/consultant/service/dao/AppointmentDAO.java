package com.buddhika.consultant.service.dao;

import java.sql.SQLException;
import java.util.List;

import com.buddhika.consultant.service.model.Appointment;


public interface AppointmentDAO {
	
	public boolean addAppointment(Appointment appointment) throws SQLException, ClassNotFoundException;
	public boolean editAppointment(Appointment appointment) throws SQLException, ClassNotFoundException;
	public boolean deleteAppointment(int appointmentID) throws SQLException, ClassNotFoundException;
	public Appointment fetchSingleAppointment(int appointmentID) throws SQLException, ClassNotFoundException;
	public List<Appointment> fetchAllAppointment() throws SQLException, ClassNotFoundException;
}
