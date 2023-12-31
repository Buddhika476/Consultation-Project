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

       
        .slideshow-container {
            position: relative;
            max-width: 100%;
            margin: auto;
        }

        
        .mySlides {
            display: none;
        }
        
        .mySlides img {
            width: 100%; 
            height: 700px; 
            border-radius: 15px;
        }

        
        .join-button {
            position: absolute;
            bottom: 50%; 
            left: 50%;
            transform: translateX(-50%);
        }

       
        .dot {
            height: 15px;
            width: 15px;
            margin: 0 2px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.6s ease;
        }

        
        .active {
            background-color: #717171;
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
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.jsp">About</a>
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
        <h1>One of the Best Services</h1>
    </div>
    <br><br>
    <div class="slideshow-container">
        <div class="mySlides">
            <img src="img/slide1.jpg" alt="Slide 1" style="width:100%">
            <div class="join-button">
                <a href="registration.jsp">
                    <button type="button" class="btn btn-primary btn-lg">Join Now</button>
                </a>
            </div>
        </div>
        <div class="mySlides">
            <img src="img/slide2.jpg" alt="Slide 2" style="width:100%">
            <div class="join-button">
                <a href="registration.jsp">
                    <button type="button" class="btn btn-primary btn-lg">Join Now</button>
                </a>
            </div>
        </div>
       
        <div style="text-align:center">
            <span class="dot"></span>
            <span class="dot"></span>
           
        </div>
    </div>
    <footer class="bg-light text-center text-lg-start mt-auto">
        <!-- Copyright -->
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
            � 2023 Copyright:
            <a class="text-dark" href="#">TopJobs.lk</a>
        </div>
        <!-- Copyright -->
    </footer>
    <script>
        var slideIndex = 0;
        showSlides();

        function showSlides() {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) {
                slideIndex = 1;
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
            setTimeout(showSlides, 4000);
        }
    </script>
	</body>
</html>