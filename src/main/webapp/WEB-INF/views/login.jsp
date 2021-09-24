<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
    <%@ include file="../segments/stylesheets.jsp" %>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/main.css">
</head>
<body>
    <%@ include file="../segments/header.jsp" %>
<div class="center">
    <h1>Login</h1>
    <form action="${pageContext.request.contextPath}/login" method="post">
        <div class="txt-field">
            <input name="username" type="text" required>
            <label>Username</label>
        </div>
        <div class="txt-field">
            <input name="password" type="password" required>
            <label>Password</label>
        </div>
        <div class="pass">Forgot Password?</div>
        <input type="submit" value="Login">
        <div class="signup-link">
            Not a member? <a href="${pageContext.request.contextPath}/signup">Signup</a>
        </div>
    </form>
    <div class="users-list">
        <c:forEach var="users" items="${applicationScope.users}">
            <li><c:out value="${users.username} - ${users.email} - ${users.password}"/></li>
        </c:forEach>
    </div>
</div>
</body>
</html>
