<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar">
    <a href="${pageContext.request.contextPath}" class="logo">
        <i class="fas fa-sign-in-alt"></i>
        LoginForm
    </a>
    <c:choose>
        <c:when test="${empty pageContext.request.userPrincipal}">
            <a href="${pageContext.request.contextPath}/login" class="login-button">Zaloguj</a>

        </c:when>
        <c:when test="${not empty pageContext.request.userPrincipal}">
            <a href="${pageContext.request.contextPath}/logout" class="login-button">Wyloguj ${pageContext.request.userPrincipal.name}</a>
        </c:when>
    </c:choose>
</nav>
