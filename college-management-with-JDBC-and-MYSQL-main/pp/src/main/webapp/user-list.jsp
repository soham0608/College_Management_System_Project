<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>User Management Application</title>
             <link rel="stylesheet" href="all.css">
     <style>
        .table-container {
            overflow-x: auto;
        }
        .table {
            width: 100%;
            min-width: 600px; /* Adjust this value as needed */
        }
        @media screen and (max-width: 1200px) {
            .table {
                font-size: 14px;
            }
        }
        @media screen and (max-width: 992px) {
            .table {
                font-size: 12px;
            }
        }
        @media screen and (max-width: 768px) {
            .table {
                font-size: 10px;
            }
            .btn {
                padding: 0.2rem 0.4rem;
                font-size: 0.8rem;
            }
        }
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
 <img src="./assets/bg.png" alt="">
        <nav>
            <h1 class="logo">PACE</h1>
            <div class="nav-links" id="navLinks">
                <span class="icon" onclick="hidemenu()">&#10005;</span>
                <ul>
                    <li><a href="admminindex.jsp">Home</a></li>
                    <li><a href="user-list.jsp">Student details</a></li>
                    <li><a href="register.jsp">Register</a></li>
                    <li><a href="#">Admission</a></li>
                    <li><a href="#">Fees</a></li>
                    <li><a href="login.jsp">Logout</a></li>

                </ul>
            </div>
            <span class="icon" onclick="showmenu()">&#9776;</span>
        </nav>
<br>
   <div class="container">
        <h3 class="text-center">List of students registered</h3>
        <hr>
        <div class="text-left mb-3">
            <a href="addUser.jsp" class="btn btn-success">Add New student</a>
        </div>
        <div class="table-container">
            <table class="table table-bordered table-hover">
                <thead class="thead-light">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Contact</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Register", "root", "Root");
                        Statement stmt = con.createStatement();
                        ResultSet rs = stmt.executeQuery("SELECT * FROM students");
                        while (rs.next()) {
                    %>
                            <tr>
                                <td><%= rs.getInt("id") %></td>
                                <td><%= rs.getString("uname") %></td>
                                <td><%= rs.getString("uemail") %></td>
                                <td><%= rs.getString("upassword") %></td>
                                <td><%= rs.getString("ucontact") %></td>
                                <td>
                                   <a href="editUser.jsp?id=<%= rs.getInt("id") %>">Edit</a>
                                                <!-- <a href="index.jsp">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; -->
                                    
									<a href="adminPanel?action=delete&id=<%= rs.getInt("id") %>" onclick="return confirm('Are you sure you want to delete this user?')">Delete</a>	                                </td>
                            </tr>
                    <% 
                        }
                        con.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    %>
                </tbody>
            </table>
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
