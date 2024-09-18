<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PACE - Edit User</title>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

.registration-container {
    display: flex;
    height: 100vh;
}

.image-container {
    flex: 1;
    background-image: url('https://images.unsplash.com/photo-1517486808906-6ca8b3f04846');
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

@media (max-width: 768px) {
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
</style>
</head>
<body>
<input type="hidden" id="status" value="<%=request.getAttribute("status")%>">

<div class="registration-container">
    <div class="image-container"></div>
    <div class="form-container">
        <h2>Edit User</h2>
        <form method="post" action=" " class="register-form" id="register-form">
            <% 
            int id = Integer.parseInt(request.getParameter("uname"));
            try {
            	 Class.forName("com.mysql.cj.jdbc.Driver");
                 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Register", "root", "Root");
                 Statement s = con.createStatement();
                ResultSet r = s.executeQuery("select * from donor where id='" + id + "'");
                if (r.next()) {
            %>
            <input type="hidden" name="id" value="<%= id %>">
            <label for="name">Full Name:</label>
            <input type="text" id="name" name="name" value="<%= r.getString(2) %>" required>
            
            <label for=" ">Password:</label>
            <input type="password" id="password" name="password" value="<%= r.getString(3) %>" required>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="<%= r.getString(4) %>" required>
            
            <label for="contact">Contact Number:</label>
            <input type="text" id="contact" name="contact" value="<%= r.getString(5) %>" required>
            
            <button type="submit">Update user</button>
            <% } %>
            <% 
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </form>
    </div>
</div>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>
</html>
