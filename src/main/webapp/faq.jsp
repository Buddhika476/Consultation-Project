<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Top Jobs</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('img/background.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        .faq-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 15px;
            margin: 20px;
        }

        /* Style for FAQ items */
        .faq-item {
            margin-bottom: 20px;
        }

        /* Style for FAQ question and answer */
        .faq-question {
            font-weight: bold;
            cursor: pointer;
        }

        .faq-answer {
            display: none;
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
                        <a class="nav-link" href="about.jsp">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact.jsp">Contact Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="#">FAQ</a>
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
    <div class="container faq-container">
        <h2>Frequently Asked Questions</h2>
        <br><br>

        <!-- FAQ Items -->
        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer('answer1')">Q: What is Top Jobs?</div>
            <div id="answer1" class="faq-answer">A: Top Jobs is a platform that connects job seekers with employers.</div>
        </div>

        <div class="faq-item">
            <div class="faq-question" onclick="toggleAnswer('answer2')">Q: How can I create an account?</div>
            <div id="answer2" class="faq-answer">A: You can create an account by clicking on the "Join Now" button on our homepage.</div>
        </div>

        <!-- Add more FAQ items as needed -->

    </div>
    </div>
    <script>
        function toggleAnswer(answerId) {
            var answer = document.getElementById(answerId);
            if (answer.style.display === "none") {
                answer.style.display = "block";
            } else {
                answer.style.display = "none";
            }
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
