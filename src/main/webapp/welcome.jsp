<%--
  Created by IntelliJ IDEA.
  User: Nakul
  Date: 10-02-2025
  Time: 18:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome | Dashboard</title>
    <link rel="stylesheet" href="css/auth.css">
</head>
<body>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    if(session.getAttribute("uname") == null) response.sendRedirect("login.jsp");
%>
<div class="container">
    <div class="form-container welcome-container">
        <h1>Welcome, ${uname}</h1>
        <p class="subtitle">You have successfully logged in!</p>

        <div class="welcome-actions">
            <form action = "logoutServlet" class = "logout-form">
                <button type = "submit" class = "btn btn-primary">Logout</button>
            </form>
        </div>

        <div class="links">
            <a href="index.jsp" class="link">Back to Home</a>
        </div>
    </div>
</div>
</body>
</html>
