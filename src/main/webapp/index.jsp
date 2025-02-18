<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome | Login System</title>
    <link rel="stylesheet" href="css/indexStyle.css">
</head>
<body>
<div class="container">
    <div class="content">
        <h1>Welcome</h1>
        <div class="time-greeting">
            <jsp:include page="/greeting" />
        </div>

        <div class="buttons">
            <a href="login.jsp" class="btn btn-primary">Login</a>
            <a href="register.jsp" class="btn btn-secondary">Register</a>
        </div>
    </div>
</div>
</body>
</html>