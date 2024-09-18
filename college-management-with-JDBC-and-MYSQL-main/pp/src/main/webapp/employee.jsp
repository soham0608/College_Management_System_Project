<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
     <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Student Portal Dashboard</title>
         <link rel="stylesheet" href="employee.css">
    </head>

    <body>
        <img src="./assets/bg.png" alt="">
        <nav>
            <h1 class="logo">PACE</h1>
            <div class="nav-links" id="navLinks">
                <span class="icon" onclick="hidemenu()">&#10005;</span>
                <ul>
 					<li><a href="adminindex.jsp">Home</a></li>
                    <li><a href="user-list.jsp">Student details</a></li>
                    <li><a href="register.jsp">Register</a></li>
                    <li><a href="#">Admission</a></li>
                    <li><a href="#">Fees</a></li>
                    <li><a href="login.jsp">Logout</a></li>

                </ul>
            </div>
            <span class="icon" onclick="showmenu()">&#9776;</span>
        </nav>
        <div class="header">
            <span class="welcome">Welcome <%=session.getAttribute("name")%> </span>
            <div class="search-bar">
                <input type="text" placeholder="Search something...">
                <button class="search-button">Search</button>
            </div>
            <div class="pp">
                <a href="#">Change Password</a>
                <a href="#">Log Out</a>
            </div>

        </div>
        <div class="container">
            <div class="sidebar">
                <h3>CORRESPONDENCE</h3>
                <a href="user-list.jsp">STAFF LIST</a>
                <a href="user-list.jsp">STUDENTS LIST</a>
                <a href="#">COMPLAINT</a>
                <a href="#">SMS</a>
                <a href="#">CIRCULARS</a>

            </div>
            <div class="main-content">
                <h2>Dashboard</h2>
                 
                <div class="card-container">
                    <div class="card">
                    <h2>Number of Records: <%= session.getAttribute("totalRegistrations") != null ? session.getAttribute("totalRegistrations") : 0 %></h2>
                    </div>
                </div>
                 
            </div>
        </div>

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