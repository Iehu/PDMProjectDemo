<%--
  Created by IntelliJ IDEA.
  User: zxczx
  Date: 29/4/2021
  Time: 9:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Signup</title>
  </head>
  <body>
  <h1>Join us now and buy our overpriced products!</h1>
  <form action="SignupServlet" method="post" >
      <label for="ID">ID</label>
      <input type="text" id="ID" name="ID" placeholder="ID"><br>
      <label for="Username">Username</label>
      <input type="text" id="Username" name="Username" placeholder="Username"><br>
      <label for="Password">Password</label>
      <input type="text" id="Password" name="Password" placeholder="Password"><br>
      <label for="PhoneNumber">Phone Number</label>
      <input type="text" id="PhoneNumber" name="PhoneNumber" placeholder="PhoneNumber"><br>
      <label for="Email">Email</label>
      <input type="Email" id="Email" name="Email" placeholder="Email"><br>
      <input type="submit">
      <label for="Login">Already have an account? Login!</label> <br>
      <input type="submit" id="Login" value="Login" formaction="index.jsp">
  </form>

  </body>
</html>
