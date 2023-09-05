package com.buddhika.consultant.service.model;

public class Appointment {
	
	private int appointmentID;
	private String firstName;
	private String lastName;
	private String email;
	private String contactNumber;
	private String gender;
	private String address;
	private String appointmentDate;
	private String country;
	private String consultant;
	private String comment;
	
	public int getAppointmentID() {
		return appointmentID;
	}
	public void setAppointmentID(int appointmentID) {
		this.appointmentID = appointmentID;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAppointmentDate() {
		return appointmentDate;
	}
	public void setAppointmentDate(String appointmentDate) {
		this.appointmentDate = appointmentDate;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getConsultant() {
		return consultant;
	}
	public void setConsultant(String consulant) {
		this.consultant = consulant;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
}
