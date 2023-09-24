<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Login</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" />
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
	</head>
<body>
	<section class="vh-100" style="background-color: #eee;">
	  <div class="container h-100">
	    <div class="row d-flex justify-content-center align-items-center h-100">
	      <div class="col-lg-12 col-xl-11">
	        <div class="card text-black" style="border-radius: 25px;">
	          <div class="card-body p-md-5">
	            <div class="row justify-content-center">
	              <a style="text-decoration: none;" href="top-jobs-main-page.jsp">
                    <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Top Jobs</p>
                  </a>
	              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
	                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Login</p>
	                <form action="login" method="post"> <!-- Updated action and method -->
	                  <div class="d-flex flex-row align-items-center mb-4">
	                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
	                    <div class="form-outline flex-fill mb-0">
	                      <input type="text" id="username" name="username" class="form-control" required /> <!-- Updated input name -->
	                      <label class="form-label" for="username">Your Name</label>
	                    </div>
	                  </div>
	                  <div class="d-flex flex-row align-items-center mb-4">
	                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
	                    <div class="form-outline flex-fill mb-0">
	                      <input type="password" id="password" name="password" class="form-control" required /> <!-- Updated input name -->
	                      <label class="form-label" for="password">Password</label>
	                    </div>
	                  </div>
	                  <div class="d-flex flex-row align-items-center mb-4">
	                  	<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
	                  		<div class="form-outline flex-fill mb-0">
			                        <label for="role" class="form-label">Role</label>
			                        <select class="form-select" name="role" id="role">
			                            <option value="Seeker">Seeker</option>
			                            <option value="Consultant">Consultant</option>
			                            <option value="Admin">Admin</option>
			                            <!-- Add more consultant options here -->
			                        </select>
			                 </div>
			          </div>
	                  <div class="d-flex justify-content-center mx-4 my-4 mb-lg-4">
					    <button type="button" class="btn btn-primary btn-lg" onclick="redirectToSignup()">Register</button>
					    <!-- Add spacing between buttons -->
					    <div class="mx-2"></div>
					    <button type="submit" class="btn btn-primary btn-lg">Login</button>
					 </div>
	                 <input type="hidden" name="actiontype" value="login"/> <!-- Hidden field for action type -->
	                </form>
	              </div>
	              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
	                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
	                  class="img-fluid" alt="Sample image">
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</section> 
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
	<script>
        // JavaScript to display the feedback message in a modal
        window.addEventListener('DOMContentLoaded', () => {
            const feedbackMessage = "${feedbackMessage}";
            if (feedbackMessage) {
                const feedbackModal = new bootstrap.Modal(document.getElementById('feedbackModal'));
                feedbackModal.show();
            }
        });
        function redirectToSignup() {
            window.location.href = 'registration.jsp';
        }
    </script>
</body>

</html>