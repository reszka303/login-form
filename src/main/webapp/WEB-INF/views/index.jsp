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
       <form action="j_security_check" method="post">
           <div class="txt_field">
               <input name="j_username" type="text" required>
               <label>Username</label>
           </div>
           <div class="txt_field">
               <input name="j_password" type="password" required>
               <label>Password</label>
           </div>
           <div class="pass">Forgot Password?</div>
           <input type="submit" value="Login">
           <div class="signup_link">
               Not a member? <a href="${pageContext.request.contextPath}/signup">Signup</a>
           </div>
       </form>
   </div>
</body>
</html>