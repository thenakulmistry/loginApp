<%--
  Created by IntelliJ IDEA.
  User: Nakul
  Date: 09-02-2025
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register | Login System</title>
    <link rel="stylesheet" href="css/auth.css">
</head>
<body>
<div class="container">
    <form action="registerServlet" method="POST" class="form-container">
        <h1>Register</h1>
        <p class="subtitle">Create your account</p>

        <div class="form-group">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required placeholder="Enter username">
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required placeholder="Enter email">
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required placeholder="Create a password">
        </div>

        <div class="form-group">
            <label for="confirm-password">Confirm Password</label>
            <input type="password" id="confirm-password" name="confirm-password" required placeholder="Confirm password">
        </div>

        <button type="submit" class="btn btn-primary">Register</button>

        <div class="links">
            <a href="login.jsp" class="link">Already have an account? Login</a>
            <a href="index.jsp" class="link">Back to Home</a>
        </div>
    </form>
</div>
</body>
</html>
