<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login Success</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/status.css">
</head>
<body>
    <div class="center">
        <h2>You have successfully logged in</h2>
        <a href="${pageContext.request.contextPath}/login">
            <input class="back-to-page" type="submit" value="Back to login page">
        </a>
    </div>
</body>
</html>
