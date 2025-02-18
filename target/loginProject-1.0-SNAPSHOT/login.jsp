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
    <title>Login | Login System</title>
    <link rel="stylesheet" href="css/auth.css">
</head>
<body>
<div class="container">
    <form action="loginServlet" method="POST" class="form-container">
        <h1>Login</h1>
        <p class="subtitle">Welcome back!</p>

        <div class="form-group">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required placeholder="Enter username">
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required placeholder="Enter password">
        </div>

        <button type="submit" class="btn btn-primary">Login</button>

        <div class="links">
            <a href="register.jsp" class="link">Don't have an account? Register</a>
            <a href="index.jsp" class="link">Back to Home</a>
        </div>
    </form>
</div>
</body>
</html>
