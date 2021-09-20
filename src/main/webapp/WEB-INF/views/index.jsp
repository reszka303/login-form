<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/forms.css">
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
               <input name="password" type="password" required>
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