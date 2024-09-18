<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Edit User</title>
     <link rel="stylesheet" href="all.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
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
    <div class="container">
        <h2>Edit User</h2>
        <%
        String id = request.getParameter("id");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Register", "root", "Root");
            PreparedStatement pstmt = con.prepareStatement("SELECT * FROM students WHERE id = ?");
            pstmt.setInt(1, Integer.parseInt(id));
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
        %>
        <form action="adminPanel" method="post">
            <input type="hidden" name="action" value="update">
            <input type="hidden" name="id" value="<%= rs.getInt("id") %>">
            <div class="form-group">
                <label>Name:</label>
                <input type="text" class="form-control" name="uname" value="<%= rs.getString("uname") %>" required>
            </div>
            <div class="form-group">
                <label>Email:</label>
                <input type="email" class="form-control" name="uemail" value="<%= rs.getString("uemail") %>" required>
            </div>
            <div class="form-group">
                <label>Password:</label>
                <input type="password" class="form-control" name="upassword" value="<%= rs.getString("upassword") %>" required>
            </div>
            <div class="form-group">
                <label>Contact:</label>
                <input type="text" class="form-control" name="ucontact" value="<%= rs.getString("ucontact") %>" required>
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
        <%
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        %>
    </div>
</body>
</html>