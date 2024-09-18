<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OTP Verification - PACE Institute</title>
<style>
 img {
    width: 100%;
    height: auto;
  }
        .h {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
           
 
        }
        .container2 {
            max-width: 400px;
            width: 100%;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }
        .header {
            background-color: #ff4444;
            color: white;
            text-align: center;
            padding: 20px;
            border-radius: 10px 10px 0 0;
        }
        .header h2 {
            margin: 0;
        }
        .header i {
            font-size: 2rem;
        }
        .body {
            padding: 30px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .input-group {
            display: flex;
            align-items: center;
            border: 1px solid #ffcccc;
            border-radius: 5px;
            overflow: hidden;
        }
        .input-group span {
            background-color: #ffcccc;
            padding: 10px;
            border-right: 1px solid #ffcccc;
        }
        .input-group input {
            border: none;
            padding: 10px;
            flex: 1;
        }
        .input-group input:focus {
            outline: none;
        }
        .btn {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #ff4444;
            color: white;
            border: none;
            border-radius: 5px;
            text-align: center;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #ff6666;
        }
        .text-danger {
            color: #ff4444 !important;
        }
    </style>
</head>
<body>
<img src="./assets/bg.png" alt="">
 <section class="h">
 <div class="container2">
        <div class="header">
            <h3><i class="fas fa-lock"></i></h3>
            <h2>Enter OTP</h2>
        </div>
        <div class="body">
            <!-- Display the message if it exists -->
            <p class="text-danger text-center" id="message"></p>
            <form id="otp-form" action="ValidateOtp" method="post">
                <div class="form-group">
                    <div class="input-group">
                        <span><i class="fas fa-key"></i></span>
                        <input type="text" id="otp" name="otp" placeholder="Enter OTP" required>
                    </div>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn">Verify OTP</button>
                </div>
            </form>
        </div>
    </div>
</section>   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const message = "<%= request.getAttribute("message") %>";
            if (message) {
                document.getElementById("message").innerText = message;
            }
        });
    </script>
</body>
</html>