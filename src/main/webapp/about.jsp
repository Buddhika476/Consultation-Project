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
    <style>
        body {
            background-image: url('img/background.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
    
        .about-us-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 15px;
            margin: 20px;
        }

    </style>
</head>
<body style="min-height: 100vh; display: flex; flex-direction: column;">
    
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Top Jobs</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="top-jobs-main-page.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="#">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact.jsp">Contact Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="faq.jsp">FAQ</a>
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
                            <i class="fas fa-sign-in-alt"></i>
                        </a>
                    </li>
             
                </ul>
            </div>
        </div>
    </nav>
    <br><br>
    <div align="center">
    <div class="container about-us-container">
        <h2>About Us</h2>
        <p>
            In the ever-evolving landscape of job consultation services, The Jobs Consultation Centre in Colombo 
stands as a reputable institution dedicated to providing invaluable guidance to job seekers aspiring to work 
abroad. With a team of specialized job consultants, the Centre offers free consultations tailored to individual 
needs, focusing on specific countries and job types. These experienced consultants, though working on a 
part-time basis, play a pivotal role in assisting job seekers in making informed decisions regarding their 
international career prospects.

        </p>
        <p>
            As the demand for consultation services has grown significantly over time, The Jobs Centre recognizes the 
importance of streamlining its operations and improving its service delivery. Currently, all critical 
information, including consultant details, job seeker profiles, and appointment records, is manually stored 
in paper-based systems. However, with the ever-increasing number of job seekers seeking guidance, it has 
become imperative to transition to a more efficient and accessible digital solution.<br>
To address this need, The Jobs Centre is embarking on a transformative journey by implementing a webbased system. This system aims to provide an enhanced experience for job seekers by allowing them to 
schedule appointments online conveniently. Furthermore, it empowers the Centre's management with the 
ability to generate "on-demand" reports, facilitating data-driven decision-making processes.
        </p>
    </div>
    </div>
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