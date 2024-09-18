<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Add New User</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2>Add New User</h2>
        <form action="adminPanel" method="post">
            <input type="hidden" name="action" value="add">
            <div class="form-group">
                <label>Name:</label>
                <input type="text" class="form-control" name="uname" required>
            </div>
            <div class="form-group">
                <label>Email:</label>
                <input type="email" class="form-control" name="uemail" required>
            </div>
            <div class="form-group">
                <label>Password:</label>
                <input type="password" class="form-control" name="upassword" required>
            </div>
            <div class="form-group">
                <label>Contact:</label>
                <input type="text" class="form-control" name="ucontact" required>
            </div>
            <button type="submit" class="btn btn-primary">Add User</button>
        </form>
    </div>
</body>
</html>