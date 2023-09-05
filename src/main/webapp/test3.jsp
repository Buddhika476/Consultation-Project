<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <title>Top Jobs Appoinment</title>
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" />
	    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
	</head>
		<body>
			<div class="container">
					<ul class="nav nav-tabs">
					  <li class="nav-item">
					    <a class="nav-link" href="appointment.jsp">Create Appointment</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="getappointment?actiontype=all">My Appointments</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link active" href="#">Re Update</a>
					  </li>
					</ul>
					<br>
					<div align="center">
						<h2>Update</h2><br><br>
					</div>
				</div>
				<div>
					<div class="container">
						<br>
						<form action="getappointment">
							<label for="appointmentID">Enter Appointment Number :</label>
							<input class="form-control" type="number" id="appointmentID" name="appointmentID" placeholder="Type the appointment number">
							<input type="hidden" name="actiontype" value="single">
							<br>
							<button type="submit" class="btn btn-info">Search</button>
						</form>
						<br>
						<form action="appointment" method="post">
							<label for="appointmentID">Appointment Number:</label>
							<input class="form-control" type="number" id="appointmentID" name="appointmentID" readonly="readonly" value="${appointment.appointmentID}">
							
							<label for="appointmentDate">Appointment Date:</label>
							<input class="form-control" type="text" id="appointmentDate" name="appointmentDate" value="${appointment.appointmentDate}">
							
							<label for="country">Country:</label>
							<input class="form-control" type="text" id="country" name="country" value="${appointment.country}">
							
							<label for="consultant">Consultant:</label>
							<input class="form-control" type="text" id="consultant" name="consultant" value="${appointment.consultant}">
							
							<input type="hidden" name="actiontype" value="edit">
							<br>
							<p style="color:magenta">${feedbackMessage}</p>
							<button type="submit" class="btn btn-warning">Update</button>
						</form>
					</div>
				</div>
	</body>
</html>