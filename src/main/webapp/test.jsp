<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <title>Top Jobs Appoinment</title>
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" />
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
	</head>
		<body>
			<div class="container">
					<ul class="nav nav-tabs">
					  <li class="nav-item">
					    <a class="nav-link" href="test2.jsp">Create Appointment</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link active" href="#">My Appointments</a>
					  </li>
					</ul>
					<br>
					<div align="center">
						<h2>My Appointment</h2><br><br>
						<p style="color:magenta">${feedbackMessage}</p>
					</div>
				</div>
				<br>
				<div>
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Appointment Number</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Email</th>
								<th>Contact Number</th>
								<th>Appointment Date</th>			
								<th>Country</th>
								<th>Consultant</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="appointment" items="${appointmentList}">
								<tr>
									
									<td>${appointment.appointmentID}</td>
									<td>${appointment.firstName}</td>
									<td>${appointment.lastName}</td>
									<td>${appointment.email}</td>
									<td>${appointment.contactNumber}</td>
									<td>${appointment.appointmentDate}</td>
									<td>${appointment.country}</td>
									<td>${appointment.consultant}</td>
									<td>
										<form action="getappointment" method="post">
											<input type="hidden" name="appointmentID" value="${appointment.appointmentID}" >
											<input type="hidden" name="actiontype" value="delete">
											<button type="submit" class="btn btn-danger">Delete</button>
										</form>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
		</body>
</html>
--%>