<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" type="text/css" href="styleLogin.css">
</head>
<body>

<ul>
    <li><a href="page1.jsp">Home</a></li>
    <li><a href="#news">News</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#about">About</a></li>
</ul>

    <div class="loginbox">
        <img src="${pageContext.request.contextPath}/avatar.png" class="avatar">
    <form action="LoginServlet" method="post">
        <h1>Sign in</h1>
    <label for="Username">Username</label>
    <input type="text" id="Username" name="Username" placeholder="your damn username"> <br/>
    <label for="Password">Password</label>
    <input type="password" id="Password" name="Password" placeholder="your damn pass" >
    <input type="submit" value="Login">
    <input type="submit" value="Sign up" formaction="Signup.jsp">
</form>
    </div>
</body>
</html>