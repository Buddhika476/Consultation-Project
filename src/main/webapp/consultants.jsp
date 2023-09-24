<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <title>Top Jobs</title>
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" />
	    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
	    <link rel="stylesheet" type="text/css" href="style.css">
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
				          <a class="nav-link active" href="#">Consultants</a>
				        </li>
				        <li class="nav-item">
				          <a class="nav-link" href="user-appointment.jsp">Appointments</a>
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
			<section class="topic-section">
			    <h2 class="section-title">America</h2>
			    <div class="consultant-cards">
			        <!-- Card 1 -->
			        <div class="consultant-card">
			            <img class="profile" src="https://www.shutterstock.com/image-vector/seo-consultant-icon-769754404" alt="Consultant Image 1">
			            <h3 class="consultant-name">Mr.Chathuranga</h3>
			            <p class="availability-status">Available</p>
			            <button class="btn btn-danger" onclick="redirectToAppointments()">Add Appointment</button>
			        </div>
			
			        <!-- Card 2 -->
			        <div class="consultant-card">
			            <img class="profile" src="consultant-image-2.jpg" alt="Consultant Image 2">
			            <h3 class="consultant-name">Mr.Randika</h3>
			            <p class="availability-status">Available</p>
			            <button class="btn btn-danger" onclick="redirectToAppointments()">Add Appointment</button>
			        </div>
			
			        <!-- Card 3 -->
			        <div class="consultant-card">
			            <img class="profile" src="img/bp.jpg" alt="buddhika">
			            <h3 class="consultant-name">Mr.Buddhika</h3>
			            <p class="availability-status">Available</p>
			            <button class="btn btn-danger" onclick="redirectToAppointments()">Add Appointment</button>
			        </div>
			
			        <!-- Card 4 -->
			        <div class="consultant-card">
			            <img class="profile" src="consultant-image-4.jpg" alt="Consultant Image 4">
			            <h3 class="consultant-name">Mr.Arjuna</h3>
			            <p class="availability-status">Available</p>
			            <button class="btn btn-danger" onclick="redirectToAppointments()">Add Appointment</button>
			        </div>
			    </div>
			</section>
			<section class="topic-section">
			    <h2 class="section-title">New Zeland</h2>
			    <div class="consultant-cards">
			        <!-- Card 1 -->
			        <div class="consultant-card">
			            <img src="consultant-image-1.jpg" alt="Consultant Image 1">
			            <h3 class="consultant-name">Mr.Chathuranga</h3>
			            <p class="availability-status">Available</p>
			            <button class="btn btn-danger" onclick="redirectToAppointments()">Add Appointment</button>
			        </div>
			
			        <!-- Card 2 -->
			        <div class="consultant-card">
			            <img src="consultant-image-2.jpg" alt="Consultant Image 2">
			            <h3 class="consultant-name">Mr.Randika</h3>
			            <p class="availability-status">Available</p>
			            <button class="btn btn-danger" onclick="redirectToAppointments()">Add Appointment</button>
			        </div>
			
			        <!-- Card 3 -->
			        <div class="consultant-card">
			            <img class="profile" src="img/bp.jpg" alt="buddhika">
			            <h3 class="consultant-name">Mr.Buddhika</h3>
			            <p class="availability-status">Available</p>
			            <button class="btn btn-danger" onclick="redirectToAppointments()">Add Appointment</button>
			        </div>
			
			        <!-- Card 4 -->
			        <div class="consultant-card">
			            <img src="consultant-image-4.jpg" alt="Consultant Image 4">
			            <h3 class="consultant-name">Mr.Arjuna</h3>
			            <p class="availability-status">Available</p>
			            <button class="btn btn-danger" onclick="redirectToAppointments()">Add Appointment</button>
			        </div>
			    </div>
			</section>
			<section class="topic-section">
			    <h2 class="section-title">Singapore</h2>
			    <div class="consultant-cards">
			        <!-- Card 1 -->
			        <div class="consultant-card">
			            <img src="consultant-image-1.jpg" alt="Consultant Image 1">
			            <h3 class="consultant-name">Mr.Chathuranga</h3>
			            <p class="availability-status">Available</p>
			            <button class="btn btn-danger" onclick="redirectToAppointments()">Add Appointment</button>
			        </div>
			
			        <!-- Card 2 -->
			        <div class="consultant-card">
			            <img src="consultant-image-2.jpg" alt="Consultant Image 2">
			            <h3 class="consultant-name">Mr.Randika</h3>
			            <p class="availability-status">Available</p>
			            <button class="btn btn-danger" onclick="redirectToAppointments()">Add Appointment</button>
			        </div>
			
			        <!-- Card 3 -->
			        <div class="consultant-card">
			            <img class="profile" src="img/bp.jpg" alt="buddhika">
			            <h3 class="consultant-name">Mr.Buddhika</h3>
			            <p class="availability-status">Available</p>
			            <button class="btn btn-danger" onclick="redirectToAppointments()">Add Appointment</button>
			        </div>
			
			        <!-- Card 4 -->
			        <div class="consultant-card">
			            <img src="consultant-image-4.jpg" alt="Consultant Image 4">
			            <h3 class="consultant-name">Mr.Arjuna</h3>
			            <p class="availability-status">Available</p>
			            <button class="btn btn-danger" onclick="redirectToAppointments()">Add Appointment</button>
			        </div>
			    </div>
			</section>
			<script type="text/javascript">
			
				function redirectToAppointments() {
		            window.location.href = 'user-appointment.jsp';
		        }
			</script>
			
		    <footer class="bg-light text-center text-lg-start mt-auto">
        <!-- Copyright -->
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
            © 2023 Copyright:
            <a class="text-dark" href="#">TopJobs.lk</a>
        </div>
        <!-- Copyright -->
    </footer>
	</body>
</html>