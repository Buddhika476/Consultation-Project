<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
				          <a class="nav-link active" href="admin-home.jsp">Home</a>
				        </li>
				        <li class="nav-item">
				          <a class="nav-link active" href="#">Panel</a>
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
					    <a class="nav-link active" href="#">Add Users</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="getadusers?actiontype=all">Users</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="getadconappointments?actiontype=all">Consultant Appointments</a>
					  </li>
					</ul>
					<br>
					<div align="center">
						<h2>Users</h2><br><br>
					</div>
					 			<form action="getaduserspost" method="post" onsubmit="return validateForm();">
                                    <div class="mb-3">
                                        <label for="username" class="form-label">Your Name</label>
                                        <input type="text" id="username" name="username" class="form-control" required minlength="3">
                                    </div>
                                    <div class="mb-3">
                                        <label for="email" class="form-label">Your Email</label>
                                        <input type="email" id="email" name="email" class="form-control" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="password" class="form-label">Password</label>
                                        <input type="password" id="password" name="password" class="form-control" required minlength="6" onkeyup="checkPasswordStrength()">
                                        <div id="password-strength-indicator"></div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="repeat_password" class="form-label">Repeat Password</label>
                                        <input type="password" id="repeat_password" name="repeat_password" class="form-control" required minlength="6">
                                    </div>
                                    <div class="mb-3">
			                        <label for="role" class="form-label">Role</label>
				                        <select class="form-select" name="role" id="role">
				                            <option value="Seeker">Seeker</option>
				                            <option value="Consultant">Consultant</option>
				                            <option value="Admin">Admin</option>
				                            <!-- Add more consultant options here -->
				                        </select>
			          				</div>
                                    <div class="form-check mb-4">
                                        <input class="form-check-input" type="checkbox" id="agree_terms" required>
                                        <label class="form-check-label" for="agree_terms">
                                            I agree to the <a href="#!">Terms of Service</a>
                                        </label>
                                    </div>
                                    <input type="hidden" name="actiontype" value="add" />
                                    <div class="d-flex justify-content-center mb-4">
                                        <button type="submit" class="btn btn-primary btn-lg">Register</button>
                                    </div>
                                </form>
				</div>

</body>
</html>