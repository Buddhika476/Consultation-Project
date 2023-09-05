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
					    <a class="nav-link active" href="#">Users</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="getappointment?actiontype=all">Consultant Appointments</a>
					  </li>
					</ul>
					<br>
					<div align="center">
						<h2>Create an Appointment</h2><br><br>
					</div>
				</div>