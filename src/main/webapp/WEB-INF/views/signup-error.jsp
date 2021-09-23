<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/status.css">
</head>
<body>
    <div class="center">
        <h2>An error occurred</h2>
        <p>A user with this name already exists or this email address has been already used.</p>
        <p>Please enter a different name or email address.</p>
        <a href="${pageContext.request.contextPath}/signup">
            <input class="back-to-page" type="submit" value="Back to the signup page">
        </a>
    </div>
</body>
</html>
