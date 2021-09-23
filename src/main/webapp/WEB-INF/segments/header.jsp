<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar">
    <a href="${pageContext.request.contextPath}" class="logo">
        <i class="fas fa-sign-in-alt"></i>
        LoginForm
    </a>
<%--    <c:choose>--%>
<%--        <c:when test="${empty pageContext.request.contextPath}">--%>
            <a href="${pageContext.request.contextPath}/login" class="login-button">Log in</a>
<%--        </c:when>--%>

<%--    </c:choose>--%>
</nav>
