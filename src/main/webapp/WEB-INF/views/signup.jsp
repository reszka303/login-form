<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Signup</title>
    <%@ include file="../segments/stylesheets.jsp" %>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/main.css">
</head>
<body>
    <%@ include file="../segments/header.jsp" %>
    <div class="center">
        <h1>Signup</h1>
        <form action="${pageContext.request.contextPath}/signup" method="post">
            <div class="txt-field">
                <input name="username" type="text" required>
                <label>Username</label>
            </div>
            <div class="txt-field">
                <input name="email" type="email" required>
                <label>Email</label>
            </div>
            <div class="txt-field">
                <input name="password" type="password" required>
                <label>Password</label>
            </div>
            <input class="user-signup-button" type="submit" value="Signup">
        </form>
    </div>
</body>
</html>