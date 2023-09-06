<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <title>Top-Jobs-Consultant</title>
	   	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" />
	    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
	</head>
		<body style="min-height: 100vh; display: flex; flex-direction: column;">
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
					  <li class="nav-item">
					  	<a class="nav-link" href="getconsult?actiontype=all">
					     <i class="fas fa-sync-alt"></i> Reset
					   </a>
					  </li>
					</ul>
				</div>
				<br>
				<div class="container">
					    <div class="text-center">
							<h2>Appointment</h2>
						</div>
					<div class="mt-4">
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
			</div>
			<br>
				<div align="center">
						<h2>Update</h2><br>
				<div class="col-md-4">
					<form action="getconsult">
						<div class="input-group" class="mb-2">
							<input class="form-control form-control-sm" type="number" id="appointmentID" name="appointmentID" placeholder="Type the appointment number">
                    		<input type="hidden" name="actiontype" value="single">
                    		<button type="submit" class="btn btn-info btn-sm">Search</button>
                		</div><br>
					</form>
				</div>
				<div class="col-md-4">
						<form action="getconsult" method="post">
						<div class="mb-2">
							<label for="appointmentID">Appointment Number:</label>
							<input class="form-control" type="number" id="appointmentID" name="appointmentID" readonly="readonly" value="${appointment.appointmentID}">
						</div>
						<div class="mb-2">
							<label for="appointmentDate">Appointment Date:</label>
							<input class="form-control" type="text" id="appointmentDate" name="appointmentDate" value="${appointment.appointmentDate}">
						</div>
						<div class="mb-2">
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
			                
			                <div class="mb-2">
			                        <label for="consultant" class="form-label">Consultant:</label>
			                        <select class="form-control" name="consultant" id="consultant">
			                            <option value="Mr.Arjuna" ${appointment.consultant == 'Mr.Arjuna' ? 'selected' : ''}>Mr.Arjuna</option>
			                            <option value="Mr.Chathuranga" ${appointment.consultant == 'Mr.Chathuranga' ? 'selected' : ''}>Mr.Chathuranga</option>
			                            <option value="Mr.Randika" ${appointment.consultant == 'Mr.Chathuranga' ? 'selected' : ''}>Mr.Randika</option>
			                            <option value="Mr.Buddhika" ${appointment.consultant == 'Mr.Chathuranga' ? 'selected' : ''}>Mr.Buddhika</option>
			                            <!-- Add more consultant options here -->
			                        </select>
			                 </div>
			                 <br>
							<input type="hidden" name="actiontype" value="edit">
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
					     <br><br>
					         <footer class="bg-light text-center text-lg-start mt-auto">
        <!-- Copyright -->
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
            © 2023 Copyright:
            <a class="text-dark" href="#">TopJobs.lk</a>
        </div>
        <!-- Copyright -->
    </footer>
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
    </script>
</html>