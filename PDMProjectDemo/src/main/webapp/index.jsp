<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Welcome to the login page" %>
</h1>
<br/>
<form action="Login-Servlet" method="post">
    <label for="Username">Username</label>
    <input type="text" id="Username" name="Username" placeholder="your damn username"> <br/>
    <label for="Password">Password</label>
    <input type="text" id="Password" name="Password" placeholder="your damn pass" >
    <input type="submit" value="Login">
    <input type="submit" value="Sign up" formaction="Signup.jsp">
</form>

</body>
</html>