package com.buddhika.consultant.service.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.buddhika.consultant.service.dao.dbutils.DbDriverManager;
import com.buddhika.consultant.service.dao.dbutils.DbDriverManagerFactory;
import com.buddhika.consultant.service.model.Appointment;

public class AppointmentDAOImpl implements AppointmentDAO {
	
	public AppointmentDAOImpl() {
		
	}
	
	private Connection getConnection() throws ClassNotFoundException, SQLException {
		
		DbDriverManagerFactory driverFactory = new DbDriverManagerFactory();
		DbDriverManager driverManager = driverFactory.getDbDriver("MySql");
		
		return driverManager.getConnection();
	}

	@Override
	public boolean addAppointment(Appointment appointment) throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		Connection connection = getConnection();
		
		
		String query = "INSERT INTO appointment(firstName, lastName, email, contactNumber, gender, address, appointmentDate, country, consulant, comment) VALUES (?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps = connection.prepareStatement(query) ;
		ps.setString(1, appointment.getFirstName());
		ps.setString(2, appointment.getLastName());
		ps.setString(3, appointment.getEmail());
		ps.setString(4, appointment.getContactNumber());
		ps.setString(5, appointment.getGender());
		ps.setString(6, appointment.getAddress());
		ps.setString(7, appointment.getAppointmentDate());
		ps.setString(8, appointment.getCountry());
		ps.setString(9, appointment.getConsultant());
		ps.setString(10, appointment.getComment());
		
		boolean result = false;
		
		if(ps.executeUpdate() > 0)
			result = true;
		
		ps.close();
		connection.close();
		return result;
	}

	@Override
	public boolean editAppointment(Appointment appointment) throws SQLException, ClassNotFoundException {
		
		Connection connection = getConnection();
		String query = "UPDATE appointment SET appointmentDate=?, country=?, consulant=? WHERE appointmentID=?";
		
		PreparedStatement ps = connection.prepareStatement(query);
		
		ps.setString(1, appointment.getAppointmentDate());
		ps.setString(2, appointment.getCountry());
		ps.setString(3, appointment.getConsultant());
		ps.setInt(4, appointment.getAppointmentID());
		
		boolean result = false;
		
		if(ps.executeUpdate() > 0)
			result = true;
		
		ps.close();
		connection.close();
		
		return result;
	}


	@Override
	public boolean deleteAppointment(int appointmentID) throws SQLException, ClassNotFoundException {
		
		Connection connection = getConnection();
		String query = "DELETE FROM appointment WHERE appointmentID=?";
		
		PreparedStatement ps = connection.prepareStatement(query);
		ps.setInt(1, appointmentID);
		
		boolean result = false;
		
		if(ps.executeUpdate() > 0)
			result = true;
		
		ps.close();
		connection.close();
		
		return result;
	}
	
	@Override
	public Appointment fetchSingleAppointment(int appointmentID) throws SQLException, ClassNotFoundException {
		
		Connection connection = getConnection();
		String query = "SELECT * FROM appointment WHERE appointmentID=?";
		
		PreparedStatement ps = connection.prepareStatement(query);
		ps.setInt(1, appointmentID);
		
		ResultSet rs = ps.executeQuery();
		
		Appointment appointment = new Appointment();
		
		while(rs.next()) {
			appointment.setAppointmentID(rs.getInt("appointmentID"));
			appointment.setFirstName(rs.getString("firstName"));
			appointment.setLastName(rs.getString("lastName"));
			appointment.setEmail(rs.getString("email"));
			appointment.setContactNumber(rs.getString("contactNumber"));
			appointment.setGender(rs.getString("gender"));
			appointment.setAddress(rs.getString("address"));
			appointment.setAppointmentDate(rs.getString("appointmentDate"));
			appointment.setCountry(rs.getString("country"));
			appointment.setConsultant(rs.getString("consulant"));
			appointment.setComment(rs.getString("comment"));
		}
		
		ps.close();
		connection.close();
		return appointment;
	}
	
	@Override
	public List<Appointment> fetchAllAppointment() throws SQLException, ClassNotFoundException {
		
		Connection connection = getConnection();
		//firstName, lastName, email, contactNumber, appointmentDate, country, consulant
		String query = "SELECT * FROM appointment";
		
		Statement st = connection.createStatement();
		
		List<Appointment> appointmentList = new ArrayList<Appointment>();
		
		ResultSet rs = st.executeQuery(query);
		
		while(rs.next()) {
			
			Appointment appointment = new Appointment();
			
			appointment.setAppointmentID(rs.getInt("appointmentID"));
			appointment.setFirstName(rs.getString("firstName"));
			appointment.setLastName(rs.getString("lastName"));
			appointment.setEmail(rs.getString("email"));
			appointment.setContactNumber(rs.getString("contactNumber"));
			appointment.setGender(rs.getString("gender"));
			appointment.setAddress(rs.getString("address"));
			appointment.setAppointmentDate(rs.getString("appointmentDate"));
			appointment.setCountry(rs.getString("country"));
			appointment.setConsultant(rs.getString("consulant"));
			appointment.setComment(rs.getString("comment"));
			
			appointmentList.add(appointment);
		}
		
		st.close();
		connection.close();
		return appointmentList;
	}

}
