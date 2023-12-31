<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <title>Top-Jobs-Admin-panel</title>
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
				          <a class="nav-link active" href="admin-home.jsp">Home</a>
				        </li>
				        <li class="nav-item">
				          <a class="nav-link active" href="#">Panel</a>
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
					    <a class="nav-link" href="admin-panel.jsp">Add Users</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link active" href="#">Users</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="getadconappointments?actiontype=all">Consultant Appointments</a>
					  </li>
					  <li class="nav-item">
					  	<a class="nav-link" href="getadmin?actiontype=all">
					     <i class="fas fa-sync-alt"></i> Reset
					   </a>
					  </li>
					</ul>
				</div>
					<br>
					<div class="container">
					    <div class="text-center">
					        <h2>Users</h2>
					    </div>
					    
					    <div class="mt-4">
					        <table class="table table-striped">
					            <thead>
					                <tr>
					                    <th>User ID</th>
					                    <th>User Name</th>
					                    <th>Email</th>
					                    <th>Password</th>
					                    <th>Role</th>
					                    <th></th>
					                </tr>
					            </thead>
					            <tbody>
					                <c:forEach var="user" items="${userList}">
					                    <tr>
					                        <td>${user.userID}</td>
					                        <td>${user.username}</td>
					                        <td>${user.email}</td>
					                        <td>${user.password}</td>
					                        <td>${user.role}</td>
					                        <td>
					                            <form action="postadmin" method="post">
					                                <input type="hidden" name="userID" value="${user.userID}">
					                                <input type="hidden" name="actiontype" value="delete">
					                                <button type="submit" class="btn btn-danger">Delete</button>
					                            </form>
					                        </td>
					                    </tr>
					                </c:forEach>
					            </tbody>
					        </table>
					    </div>
					    			
					    <div class="text-center mt-5">
					        <h2>Update</h2><br>
					    </div>
				<div align="center">	    
        <!-- Search User Section -->
        <div class="col-md-4">
            <form action="postadmin">
                <div class="input-group" class="mb-2">
                    <input class="form-control form-control-sm" type="number" id="userid" name="userID" placeholder="Enter User ID">
                    <input type="hidden" name="actiontype" value="single">
                    <button type="submit" class="btn btn-info btn-sm">Search</button>
                </div>
            </form>
        </div>
        <!-- Update User Section -->
        <div class="col-md-4">
            <form action="postadmin" method="post">
                <div class="mb-2">
                    <label for="userid" class="form-label">User ID:</label>
                    <input class="form-control form-control-sm" type="number" id="userid" name="userID" readonly="readonly" value="${user.userID}">
                </div>
                <div class="mb-2">
                    <label for="userName" class="form-label">Username:</label>
                    <input class="form-control form-control-sm" type="text" id="userName" name="username" value="${user.username}">
                </div>
                <div class="mb-2">
                    <label for="Email" class="form-label">Email:</label>
                    <input class="form-control form-control-sm" type="text" id="Email" name="email" value="${user.email}">
                </div>
                <div class="mb-2">
                    <label for="Password" class="form-label">Password:</label>
                    <input class="form-control form-control-sm" type="text" id="Password" name="password" value="${user.password}">
                </div>
                <div class="mb-2">
                    <label for="Role" class="form-label">Role:</label>
                    <select class="form-control form-control-sm" name="role" id="Role">
                        <option value="Seeker" ${user.role == 'Seeker' ? 'selected' : ''}>Seeker</option>
                        <option value="Consultant" ${user.role == 'Consultant' ? 'selected' : ''}>Consultant</option>
                        <option value="Admin" ${user.role == 'Admin' ? 'selected' : ''}>Admin</option>
                        <!-- Add more role options here -->
                    </select>
                </div>
                <input type="hidden" name="actiontype" value="edit">
                <button type="submit" class="btn btn-warning btn-sm">Update</button>
            </form>
        </div>
    </div>
</div>
--%>	
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
            � 2023 Copyright:
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