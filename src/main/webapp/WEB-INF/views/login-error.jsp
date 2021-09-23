<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html lang="en">
<head>
    <title>Login Error</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/status.css">
</head>
<body>
    <div class="center">
        <h2>An error occurred</h2>
        <p>The wrong username or password has been enterd</p>
        <a href="${pageContext.request.contextPath}/login">
            <input class="back-to-page" type="submit" value="Back to the login page">
        </a>
    </div>
</body>
</html>
