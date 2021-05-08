<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Sign up</title>
      <link rel="stylesheet" type="text/css" href="style.css">
  </head>
  <body>
  <div class="loginbox">
      <img src="${pageContext.request.contextPath}/avatar.png" class="avatar">
      <form action="SignupServlet" method="post" >
            <h1>Sign Up</h1>
            <label for="Firstname">Firstname</label>
            <input type="text" id="Firstname" name="fname" placeholder="Firstname"><br>
            <label for="Lastname">Lastname</label>
            <input type="text" id="Lastname" name="lname" placeholder="Lastname"><br>
            <label for="Username">Username</label>
            <input type="text" id="Username" name="Username" placeholder="Username"><br>
            <label for="Password">Password</label>
            <input type="password" id="Password" name="Password" placeholder="Password"><br>
            <label for="PhoneNumber">Phone Number</label>
            <input type="text" id="PhoneNumber" name="PhoneNumber" placeholder="PhoneNumber"><br>
            <label for="Email">Email</label>
            <input type="Email" id="Email" name="Email" placeholder="Email"><br>
            <label for="Day">Day</label>
            <input type="text" id="Day" name="day" placeholder="DD"><br>
            <label for="Month">Month</label>
            <input type="text" id="Month" name="month" placeholder="MM"><br>
            <label for="Birthdate">Year</label>
            <input type="text" id="Birthdate" name="birthdate" placeholder="MM/DD/YYYY"><br>
            <input type="submit">
            <input type="submit" id="Login" value="Login" formaction="index.jsp">
      </form>
  </div>

  </body>
</html>
