<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <title>Login</title>
    <%@ include file="../segments/stylesheets.jsp" %>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/main.css">
</head>
<body>
    <%@ include file="../segments/header.jsp" %>
<div class="center">
    <h1>Login</h1>
    <form action="j_security_check" method="post">
        <div class="txt-field">
            <input name="j_username" type="text" required>
            <label>Username</label>
        </div>
        <div class="txt-field">
            <input name="j_password" type="password" required>
            <label>Password</label>
        </div>
        <div class="pass">Forgot Password?</div>
        <input type="submit" value="Login">
        <div class="signup-link">
            Not a member? <a href="${pageContext.request.contextPath}/signup">Signup</a>
        </div>
    </form>
</div>
</body>
</html>
