<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <div class="center">
        <h1>Login</h1>
        <form action="${pageContext.request.contextPath}/login" method="post">
            <div class="txt-field">
                <input name="username" type="text" required>
                <label>Username</label>
            </div>
            <div class="txt-field">
                <input name="password" type="text" required>
                <label>Password</label>
            </div>

        </form>
    </div>
</body>
</html>
