<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <title>Top Jobs Appointment</title>
	   	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" />
	    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
	</head>
		<body>
		   <header>
			 <nav class="navbar navbar-expand-lg bg-body-tertiary">
				  <div class="container-fluid">
				    <a class="navbar-brand" href="#">Top Jobs</a>
				    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				      <span class="navbar-toggler-icon"></span>
				    </button>
				    <div class="collapse navbar-collapse" id="navbarSupportedContent">
				      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
				        <li class="nav-item">
				          <a class="nav-link" aria-current="page" href="consultant-home.jsp">Home</a>
				        </li>
				        <li class="nav-item">
				          <a class="nav-link active" href="#">Appointments</a>
				        </li>
				        <li class="nav-item dropdown">
						    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">More</a>
						    <ul class="dropdown-menu">
						      <li><a class="dropdown-item" href="#">About Us</a></li>
						      <li><a class="dropdown-item" href="#">FAQ</a></li>
						      <li><hr class="dropdown-divider"></li>
						      <li><a class="dropdown-item" href="#">Contact Us</a></li>
						    </ul>
						</li>
				      </ul>
				      <ul class="navbar-nav me-2 mb-2 mb-lg-0">
					    <li class="nav-item">
					        <a class="nav-link" href="https://www.facebook.com" target="_blank">
					        	<i class="fab fa-facebook"></i>
					        </a>
					    </li>
					    <li class="nav-item">
					        <a class="nav-link" href="https://www.twitter.com" target="_blank">
					            <i class="fab fa-twitter"></i>
					        </a>
					    </li>
					    <li class="nav-item">
					        <a class="nav-link" href="https://www.instagram.com" target="_blank">
					            <i class="fab fa-instagram"></i>
					        </a>
					    </li>
					    <li class="nav-item">
					        <a class="nav-link" href="login.jsp">
					            <i class="fas fa-sign-out-alt"></i>
					        </a>
					    </li>
					    <!-- Add more social media icons and links as needed -->
					</ul>
				    </div>
				  </div>
				</nav>
			</header>
				<div class="container">
					<ul class="nav nav-tabs">
					  <li class="nav-item">
					    <a class="nav-link active" href="#">My Appointments</a>
					  </li>
					</ul>
					<br>
				</div>
				<br>
				<div align="center">
				<h2>Appointment</h2>
				<div class="modal-footer">
					  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="refreshPage()">Refresh</button>
				</div>
				</div><br><br>
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
										<form action="getconsult">
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
				<div align="center">
						<h2>Update</h2><br><br>
				</div>
				<div>
					<div class="container">
						<br>
						<form action="getconsult">
							<label for="appointmentID">Enter Appointment Number :</label>
							<input class="form-control" type="number" id="appointmentID" name="appointmentID" placeholder="Type the appointment number">
							<input type="hidden" name="actiontype" value="single">
							<br>
							<button type="submit" class="btn btn-info">Search</button>
						</form>
						<br>
						<form action="getconsult" method="post">
							<label for="appointmentID">Appointment Number:</label>
							<input class="form-control" type="number" id="appointmentID" name="appointmentID" readonly="readonly" value="${appointment.appointmentID}">
							
							<label for="appointmentDate">Appointment Date:</label>
							<input class="form-control" type="text" id="appointmentDate" name="appointmentDate" value="${appointment.appointmentDate}">
							
							<div class="mb-3">
			                        <label for="country" class="form-label">Country:</label>
			                        <select class="form-control" name="country" id="country">
			                            <option value="United States" ${appointment.country == 'United States' ? 'selected' : ''}>United States</option>
			                            <option value="Canada" ${appointment.country == 'Canada' ? 'selected' : ''}>Canada</option>
			                            <option value="New Zealand" ${appointment.country == 'New Zealand' ? 'selected' : ''}>New Zealand</option>
			                            <option value="Australia" ${appointment.country == 'Australia' ? 'selected' : ''}>Australia</option>
			                            <option value="India" ${appointment.country == 'India' ? 'selected' : ''}>India</option>
			                            <!-- Add more country options here -->
			                        </select>
			                </div>
			                
			                <div class="mb-3">
			                        <label for="consultant" class="form-label">Consultant:</label>
			                        <select class="form-control" name="consultant" id="consultant">
			                            <option value="Mr.Arjuna" ${appointment.consultant == 'Mr.Arjuna' ? 'selected' : ''}>Mr.Arjuna</option>
			                            <option value="Mr.Chathuranga" ${appointment.consultant == 'Mr.Chathuranga' ? 'selected' : ''}>Mr.Chathuranga</option>
			                            <option value="Mr.Randika" ${appointment.consultant == 'Mr.Chathuranga' ? 'selected' : ''}>Mr.Randika</option>
			                            <option value="Mr.Buddhika" ${appointment.consultant == 'Mr.Chathuranga' ? 'selected' : ''}>Mr.Buddhika</option>
			                            <!-- Add more consultant options here -->
			                        </select>
			                 </div>
			         
							<input type="hidden" name="actiontype" value="edit">
							<br>
							<button type="submit" class="btn btn-warning">Update</button>
						</form>
					</div>
				</div>
				<div class="modal fade" id="feedbackModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					        <div class="modal-dialog">
					            <div class="modal-content">
					                <div class="modal-header">
					                    <h5 class="modal-title" id="exampleModalLabel">Feedback Message</h5>
					                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					                </div>
					                <div class="modal-body">
					                    <p style="color: green">${feedbackMessage}</p>
					                </div>
					                <div class="modal-footer">
					                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="refreshPage()">Close</button>
					                </div>
					            </div>
					        </div>
					     </div>
		</body>
		<script>
        // JavaScript to display the feedback message in a modal
        window.addEventListener('DOMContentLoaded', () => {
            const feedbackMessage = "${feedbackMessage}";
            if (feedbackMessage) {
                const feedbackModal = new bootstrap.Modal(document.getElementById('feedbackModal'));
                feedbackModal.show();
            }
        });
        
        function refreshPage() {
            window.location.href = "getconsult?actiontype=all";
          }
    </script>
</html>