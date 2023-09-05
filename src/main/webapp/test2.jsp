<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
					    <a class="nav-link active" href="#">Create Appointment</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="getappointment?actiontype=all">My Appointments</a>
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
    </script>
</html>
--%>