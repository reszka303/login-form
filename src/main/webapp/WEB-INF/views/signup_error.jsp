<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/signup_status.css">
</head>
<body>
    <div class="center">
        <h1>An error occupied</h1>
        <p>A user with that name already exists. Please enter a different name.</p>
        <a href="${pageContext.request.contextPath}/signup">
            <input class="back-to-signup-page" type="submit" value="Back to the signup page">
        </a>
    </div>
</body>
</html>
