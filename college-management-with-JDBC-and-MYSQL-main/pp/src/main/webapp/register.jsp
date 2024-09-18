<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PACE - Create Account</title>
<link rel="stylesheet" href="style.css">
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: Arial, sans-serif;
}

/* Basic styling */
.registration-container {
	display: flex;
	height: 100vh;
}

.image-container {
	flex: 1;
	background-image:
		url('https://images.unsplash.com/photo-1517486808906-6ca8b3f04846');
	background-size: cover;
	background-position: center;
}

.form-container {
	flex: 1;
	padding: 2rem;
	display: flex;
	flex-direction: column;
	justify-content: center;
	background-color: #fff;
}

.form-container h2 {
	color: #ff4444;
	margin-bottom: 1rem;
	text-align: center;
}

.form-container form {
	display: flex;
	flex-direction: column;
}

.form-container input {
	margin-bottom: 1rem;
	padding: 0.75rem;
	border: 1px solid #ffcccc;
	border-radius: 4px;
	font-size: 1rem;
}

.form-container button {
	background-color: #ff4444;
	color: white;
	padding: 0.75rem;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	transition: background-color 0.3s ease;
	font-size: 1rem;
	font-weight: bold;
}

.form-container button:hover {
	background-color: #ff6666;
}

.form-container .login-link {
	text-align: center;
	margin-top: 1rem;
	color: #ff4444;
}

@media ( max-width : 768px) {
	.registration-container {
		flex-direction: column;
	}
	.image-container {
		height: 30vh;
	}
	.form-container {
		padding: 1em;
	}
	.form-container input, .form-container button {
		font-size: 0.800rem;
	}
	.form-container h2 {
		font-size: 1rem;
		margin-bottom: 1.3rem;
		text-align: center;
	}
}
   img {
    width: 100%;
    height: auto;
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
<input type="hidden" id="status" value="<%=request.getAttribute("status")%>">

	<div class="registration-container">
		<div class="image-container"></div>
		<div class="form-container">
			<h2>Create Your PACE Account</h2>
		<form method="post" action="register" class="register-form" id="register-form" onsubmit="return validatePasswords()">
    <input type="text" name="name" placeholder="Full Name"  >
    <input type="email" name="email" placeholder="Email"  >
    <input type="password" id="password" name="password" placeholder="Password"  >
    <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm Password" >
    <input type="text" name="contact" placeholder="Contact Number"  >
    <div>
	<input type="checkbox" onclick="togglePassword()"> Show Password
	</div>
    <button type="submit">Create Account</button>
</form>

<p class="login-link">
    Already have an account? <a href="login.jsp">Log in</a>
</p>
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
				function validatePasswords() {
					var password = document.getElementById("password").value;
					var confirmPassword = document.getElementById("confirmPassword").value;
					if (password !== confirmPassword) {
						swal("Error", "Passwords do not match. Please try again.", "error");
						return false;
					}
					return true;
				}

				function displayAlert() {
					var status = document.getElementById("status").value;
					if (status == "success") {
						swal({
							title: "Good job!",
							text: "Your account is created!",
							icon: "success"
						}).then(() => {
							window.location.href = "login.jsp";
						});
					} else if (status == "passwordMismatch") {
						swal("Error", "Passwords do not match. Please try again.", "error");
					} else if (status == "formIncomplete") {
						swal("Error", "Please fill in all fields.", "error");
					} else if (status == "failed") {
						swal("Error", "Account creation failed. Please try again.", "error");
					}
				}

				document.addEventListener("DOMContentLoaded", function() {
					if (document.getElementById("status").value) {
						displayAlert();
					}
				});
				function togglePassword() {
					var password = document.getElementById("password");
					var confirmPassword = document.getElementById("confirmPassword");
					if (password.type === "password") {
						password.type = "text";
						confirmPassword.type = "text";
					} else {
						password.type = "password";
						confirmPassword.type = "password";
					}
				}
			</script>
</body>
</html>