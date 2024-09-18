<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Forgot Password - PACE</title>
<link rel="stylesheet" href="style.css">
<style type="text/css">

img {
    width: 100%;
    height: auto;
  }
   .h {
            font-family: Arial, sans-serif;
              margin: 0;
            padding: 0;
            justify-content: center;
            align-items: center;
            
        }
        .container {
             background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            padding: 30px;
            max-width: 800px; /* Adjust max-width to your preference */
            margin: 50px auto;
            box-sizing: border-box;
        }
        .header-image {
            width: 100%;
            max-height: 150px;
            object-fit: cover;
            border-radius: 8px 8px 0 0;
            margin-bottom: 10px;
        }
        .ff {
            color: #ff4444;
            margin-bottom: 20px;
            text-align: center;
        }
        p {
            color: #666;
            margin-bottom: 20px;
        }
        ol {
            color: #666;
            margin-bottom: 20px;
            padding-left: 20px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }
        input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ffcccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .hint {
            font-size: 0.9em;
            color: #888;
            margin-bottom: 20px;
        }
        .button-group {
            display: flex;
            gap: 10px;
        }
        .button {
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1em;
            transition: background-color 0.3s;
            flex: 1;
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
         @media screen and (max-width: 768px) {
            .container {
                padding: 20px;
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
        <img src="./assets/logo.png" alt="PACE Institute" class="header-image">
        <h1 class="ff">Forgot your password?</h1>
        <p>Change your password in three easy steps. This will help you to secure your password!</p>
        <ol>
            <li>Enter your email address below.</li>
            <li>Our system will send you an OTP to your email</li>
            <li>Enter the OTP on the next page</li>
        </ol>
        <form  action="ForgotPassword" method="POST">
            <label for="email">Enter your email address</label>
            <input type="email" id="email" name="email" required>
            <p class="hint">Enter the registered email address. Then we'll email an OTP to this address.</p>
            <div class="button-group">
                <button type="submit" class="button button-primary">Get New Password</button>
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
</body>
</html>