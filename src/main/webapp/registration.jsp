<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration</title>
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
                                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>
                                <form action="userdao" method="post" onsubmit="return validateForm();">
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
                                        <div class="mx-2"></div>
                                        <button type="button" class="btn btn-primary btn-lg" onclick="redirectToLogin()">Login</button>
                                    </div>
                                </form>
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
					                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
					                </div>
					             </div>
					         </div>
					        </div>
                            <script>
                                function validateForm() {
                                    var password = document.getElementById("password").value;
                                    var repeatPassword = document.getElementById("repeat_password").value;

                                    if (password !== repeatPassword) {
                                        alert("Password and Repeat Password do not match.");
                                        return false;
                                    }

                                    return true;
                                }

                                function redirectToLogin() {
                                    window.location.href = 'login.jsp';
                                }

                                function checkPasswordStrength() {
                                    var password = document.getElementById("password").value;
                                    var strengthIndicator = document.getElementById("password-strength-indicator");

                                    // Define your password strength criteria here
                                    var criteria = [
                                        { label: "Lowercase", regex: /[a-z]/ },
                                        { label: "Uppercase", regex: /[A-Z]/ },
                                        { label: "Number", regex: /[0-9]/ },
                                        { label: "Special Character", regex: /[!@#$%^&*()_+{}\[\]:;<>,.?~\\-]/ }
                                    ];

                                    var strength = 0;

                                    criteria.forEach(function (rule) {
                                        if (rule.regex.test(password)) {
                                            strength++;
                                        }
                                    });

                                    // Adjust the minimum strength required as needed
                                    var minStrength = 3; // For example, require at least 3 out of 4 criteria

                                    // Determine the color based on strength
                                    var colorClass = "";
                                    if (strength >= minStrength) {
                                        colorClass = "text-success"; // Strong password
                                    } else if (strength > 0) {
                                        colorClass = "text-warning"; // Moderate password
                                    } else {
                                        colorClass = "text-danger"; // Weak password
                                    }

                                    // Update the password strength indicator
                                    var strengthText = "";
                                    if (strength >= minStrength) {
                                        strengthText = "Strong Password";
                                    } else if (strength > 0) {
                                        strengthText = "Moderate Password";
                                    } else {
                                        strengthText = "Weak Password";
                                    }

                                    strengthIndicator.innerHTML = `<strong class="${colorClass}">${strengthText}</strong>`;
                                }
                                
                             // JavaScript to display the feedback message in a modal
                    	        window.addEventListener('DOMContentLoaded', () => {
                    	            const feedbackMessage = "${feedbackMessage}";
                    	            if (feedbackMessage) {
                    	                const feedbackModal = new bootstrap.Modal(document.getElementById('feedbackModal'));
                    	                feedbackModal.show();
                    	            }
                    	        });
                            </script>
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
</body>
</html>

    