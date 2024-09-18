<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login Page</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="footer.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin-top: 10px;
            background-color: #fff;
        }
        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            margin-bottom: 40px;
        }
        .login-form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 300px;
        }
        .login-form h2 {
            text-align: center;
            color: #ff4444;
            margin-bottom: 20px;
        }
        .login-form input {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ffcccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .login-form button {
            width: 100%;
            padding: 10px;
            background-color: #ff4444;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .login-form button:hover {
            background-color: #ff6666;
        }
         .icons {
        text-align: center;
        margin-bottom: 20px;
    }
    .icons img {
        width: 50px;
        height: 50px;
        display: inline-block; /* Ensure the image is always displayed */
    }
        .forgot-password, .create-account {
            text-align: center;
            margin-top: 10px;
        }
        .forgot-password a, .create-account a {
            color: #ff4444;
            text-decoration: none;
            font-size: 14px;
        }
        .forgot-password a:hover, .create-account a:hover {
            text-decoration: underline;
        }
        /* Responsive adjustments */
    @media (min-width: 701px) {
        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }
        .login-form {
            width: 300px;
        }
    }
    
    @media (max-width: 700px) {
        .container {
            flex-direction: column;
            align-items: center;
        }
        .login-form {
            width: 90%;
            max-width: 300px;
        }
    }
    
    /* Ensure images are always visible */
    img {
        max-width: 100%;
        height: auto;
        display: block;
    }
    </style>
</head>
<body>
<img src="./assets/bg.png" alt="">
    <nav>
        <h1 class="logo">PACE</h1>
        <div class="nav-links" id="navLinks">
            <span class="icon" onclick="hidemenu()">&#10005;</span>
            <ul>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="register.jsp">Register</a></li>
                <li><a href="#" target="_top">ContactUs</a></li>
            </ul>
        </div>
        <span class="icon" onclick="showmenu()">&#9776;</span>
    </nav>
    
    <div class="container">
<form class="login-form" action="EmployeeLogin" method="post">
    <h2>Employee Login</h2>
    <div class="icons">
        <img src="https://cdn-icons-png.flaticon.com/512/2321/2321232.png" alt="Employee Icon">
    </div>
     
    <input type="text" name="username" placeholder="User Name" required>
    <input type="password" name="password" placeholder="Password" required>
    <button type="submit">LOGIN</button>
    <div class="create-account">
        <a href="#">Forgot password</a>
    </div>
</form>
        <form method="post" action="login" class="login-form" id="login-form">
            <h2>Student Login</h2>
            <div class="icons">
            <img src="https://cdn-icons-png.flaticon.com/512/3135/3135755.png" alt="Student Icon">
            </div>
            <input type="text" name="email" placeholder="Email id"  >
            <input type="password" name="password" placeholder="Password"  >
            <button type="submit">LOGIN</button>
            <div class="forgot-password">
                <a href="forgotPassword.jsp">Forgot Password?</a>
                 <a href="resetPassword.jsp">Reset Password</a>
            </div>
            <div class="create-account">
                <a href="register.jsp">Create Student Account</a>
            </div>
        </form>
    </div>
    <footer class="footer">
        <div class="footer__addr">
            <h1 class="footer__logo"><img src="assets/logo.png" alt=""></h1>
            <h2 class="nav__title">Contact</h2>
            <p>+91-9581456310</p>
            <address>
                NH-5, near Valluramma Temple, Ongole, Andhra Pradesh 523272<br>
                <a class="hero-btn" href="mailto:example@gmail.com">Email Us</a>
            </address>
        </div>
        <ul class="footer__nav">
            <li class="nav__item">
                <h2 class="nav__title">DOWNLOAD</h2>
                <ul class="nav__ul">
                    <li><a href="#">Student Hand Book</a></li>
                    <li><a href="#">HR Policy Book</a></li>
                    <li><a href="#">Organisation Chart</a></li>
                    <li><a href="#">College Brochure</a></li>
                    <li><a href="#">Job Application</a></li>
                    <li><a href="#">Alternative Ads</a></li>
                    <li><a href="#">Institutional Development Plan</a></li>
                </ul>
            </li>
            <li class="nav__item">
                <h2 class="nav__title">QUICK LINKS</h2>
                <ul class="nav__ul">
                    <li><a href="#">Academic Calendar</a></li>
                    <li><a href="#">Courses Offered</a></li>
                    <li><a href="#">Online Fee Payment</a></li>
                    <li><a href="#">Exam Results</a></li>
                    <li><a href="#">RTI</a></li>
                </ul>
            <li class="nav__item">
                <h2 class="nav__title">Legal</h2>
                <ul class="nav__ul">
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Terms of Use</a></li>
                </ul>
            </li>
        </ul>
        <div class="legal">
            <p>&copy; PACE INSTITUTE OF TECHNOLOGY AND SCIENCES (PACE ITS).</p>
        </div>
        <div class="icons">
            <p class="nav__title">Follow Us On</p>
            <i class="fa-brands fa-facebook-f"></i>
            <i class="fa-brands fa-twitter"></i>
            <i class="fa-brands fa-linkedin"></i>
            <i class="fa-brands fa-github"></i>
        </div>
    </footer>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
     <script>
    document.addEventListener('DOMContentLoaded', function() {
        var status = "<%= request.getAttribute("status") %>";
        if (status === "failed") {
            swal("Login Failed", "Invalid username or password. Please try again.", "error");
        }
        else if (status === "formIncomplete") {
            swal("Error", "Please fill in all fields.", "error");
        }
    });
    </script>
     <script>
        var navLinks = document.getElementById("navLinks");

        function showmenu() {
            navLinks.style.right = "0";
        }
        function hidemenu() {
            navLinks.style.right = "-200px";
        }
    </script>
</body>
</html>
