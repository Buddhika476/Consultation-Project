<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <title>Top Jobs User Appointment</title>
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
				          <a class="nav-link" aria-current="page" href="user-home.jsp">Home</a>
				        </li>
				        <li class="nav-item">
				          <a class="nav-link" href="consultants.jsp">Consultants</a>
				        </li>
				        <li class="nav-item">
				          <a class="nav-link active" href="#">Appointments</a>
				        </li>S
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
					    <a class="nav-link active" href="#">Create Appointment</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="getappointment?actiontype=all">My Appointments</a>
					  </li>
					  <li class="nav-item">
					  	<a class="nav-link" href="user-appointment.jsp">
					     <i class="fas fa-sync-alt"></i> Reset
					   </a>
					  </li>
					</ul>
					<br>
					<div align="center">
						<h2>Create an Appointment</h2><br><br>
					</div>
				</div>
		        <div class="container">
			        <div class="row justify-content-center">
			            <div class="col-md-8">
			                <form action="appointment" method="post">
			                    <div class="row mb-3">
			                        <div class="col-md-6">
			                            <label for="firstName" class="form-label">First Name:</label>
			                            <input class="form-control" type="text" name="firstName" id="firstName" placeholder="Enter First Name" required>
			                        </div>
			                        <div class="col-md-6">
			                            <label for="lastName" class="form-label">Last Name:</label>
			                            <input class="form-control" type="text" name="lastName" id="lastName" placeholder="Enter Last Name" required>
			                        </div>
			                    </div>
			                   <div class="row mb-3">
								    <div class="col-md-6">
								        <label for="email" class="form-label">Email:</label>
								        <input class="form-control" type="email" name="userEmail" id="email" placeholder="Enter Email" required>
								    </div>
								    <div class="col-md-6">
								        <label for="contactNumber" class="form-label">Contact Number:</label>
								        <input class="form-control" type="tel" name="contactNumber" id="contactNumber" placeholder="Enter Contact Number" required>
								    </div>
								</div>
								<div class="row mb-3">
								    <label class="form-label col-md-3">Gender:</label>
								    <div class="row mb-3">
								    <div class="col-md-7">
								        <div class="form-check form-check-inline">
								            <input class="form-check-input" type="radio" name="gender" id="male" value="Male" required>
								            <label class="form-check-label" for="male">Male</label>
								        </div>
								        <div class="form-check form-check-inline">
								            <input class="form-check-input" type="radio" name="gender" id="female" value="Female" required>
								            <label class="form-check-label" for="female">Female</label>
								        </div>
								        <div class="form-check form-check-inline">
								            <input class="form-check-input" type="radio" name="gender" id="other" value="Other" required>
								            <label class="form-check-label" for="other">Other</label>
								        </div>
								    </div>
								    </div>
								</div>
			                    <div class="mb-3">
			                        <label for="address" class="form-label">Address:</label>
			                        <input class="form-control" type="tel" name="address" id="address" placeholder="Enter Address" required>
			                    </div>
			                    <div class="mb-3">
			                        <label for="country" class="form-label">Country:</label>
			                        <select class="form-select" name="country" id="country">
			                            <option value="United States">United States</option>
			                            <option value="Canada">Canada</option>
			                            <option value="New Zealand">New Zealand</option>
			                            <option value="Australia">Australia</option>
			                            <option value="India">India</option>
			                            <!-- Add more country options here -->
			                        </select>
			                    </div>
			                    <div class="mb-3">
			                        <label for="consultant" class="form-label">Consultant:</label>
			                        <select class="form-select" name="consultant" id="consultant">
			                            <option value="Mr.Arjuna">Mr.Arjuna</option>
			                            <option value="Mr.Chathuranga">Mr.Chathuranga</option>
			                            <option value="Mr.Randika">Mr.Randika</option>
			                            <option value="Mr.Buddhika">Mr.Buddhika</option>
			                            <!-- Add more consultant options here -->
			                        </select>
			                    </div>
			                    <div class="mb-3">
			                        <label for="appointmentDate" class="form-label">Appointment Date:</label>
			                        <input class="form-control" type="date" name="appointmentDate" id="appointmentDate" required>
			                    </div>
			                    <div class="mb-3">
			                        <label for="comments" class="form-label">Comments:</label>
			                        <textarea class="form-control" name="comments" id="comments" rows="3" placeholder="Enter any comments or additional information"></textarea>
			                    </div>	                    
				                <div class="form-check mb-3">
				                    <input class="form-check-input" type="checkbox" name="agreement" id="agreement" required>
				                    <label class="form-check-label" for="agreement">I agree to the terms and conditions</label>
				                </div>
				                </div>
			                    <div class="text-center">
			                        <button class="btn btn-primary btn-lg" type="submit">Submit</button>
			                    </div>
			                    <input type="hidden" name="actiontype" value="add">
			                </form>
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
					                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
					                </div>
					             </div>
					         </div>
					     </div>
			         </div>
			      </div>
			      <br><br>
		<footer class="bg-light text-center text-lg-start mt-auto">
	        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
	            © 2023 Copyright:
	            <a class="text-dark" href="#">TopJobs.lk</a>
	        </div>
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