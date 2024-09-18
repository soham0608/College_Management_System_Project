<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset Password</title>
<link rel="stylesheet" href="style.css">
<style>
 img {
    width: 100%;
    height: auto;
  }
        .h {
            font-family: Arial, sans-serif;
            background-color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
           
        }
        .container {
            width: 90%;
            max-width: 400px;
            padding: 20px;
        }
        .reset-password-form {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .reset-password-form h2 {
            text-align: center;
            color: #ff4444;
            margin-bottom: 20px;
            font-size: 24px;
        }
        .reset-password-form label {
            display: block;
            margin-bottom: 5px;
            font-size: 16px;
        }
        .reset-password-form input {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ffcccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }
        .button-group {
            display: flex;
            justify-content: space-between;
            gap: 10px;
        }
        .button {
            flex: 1;
            padding: 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        .button-primary {
            background-color: #ff4444;
            color: white;
        }
        .button-primary:hover {
            background-color: #ff6666;
        }
        .button-secondary {
            background-color: #cccccc;
            color: #333;
        }
        .button-secondary:hover {
            background-color: #bbbbbb;
        }
        @media (max-width: 480px) {
            .container {
                width: 95%;
            }
            .reset-password-form {
                padding: 20px;
            }
            .reset-password-form h2 {
                font-size: 22px;
            }
            .reset-password-form input,
            .button {
                font-size: 14px;
            }
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
    <section class="h">
 <div class="container">
        <form class="reset-password-form" action="resetPassword" method="POST">
            <h2>Reset Password</h2>
            <label for="email">Enter your email address</label>
            <input type="email" id="email" name="email" required>
            <label for="newPassword">Enter new password</label>
            <input type="password" id="newPassword" name="newPassword" required>
            <div class="button-group">
                <button type="submit" class="button button-primary">Reset Password</button>
                <button type="button" class="button button-secondary" onclick="window.location.href='login.jsp'">Back to Login</button>
            </div>
        </form>
    </div>
    </section>
     <script>
        var navLinks = document.getElementById("navLinks");

        function showmenu() {
            navLinks.style.right = "0";
        }
        function hidemenu() {
            navLinks.style.right = "-200px";
        }
    </script>
       <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
   <script>
   document.addEventListener('DOMContentLoaded', function() {
       var status = "<%= request.getAttribute("status") %>";
       if (status === "resetSuccess") {
           swal("Success", "Your password has been reset successfully.", "success").then(() => {
               window.location.href = "login.jsp";
           });
       } else if (status === "emailNotFound") {
           swal("Error", "Email not found. Please try again.", "error");
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










