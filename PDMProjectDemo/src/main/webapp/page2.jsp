<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 5/11/2021
  Time: 9:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <script type="text">
    </script>
    <!--thiet lap encoding lang cho web-->
    <meta charset = "UTF-8">
    <!--thiet lap viewprot cho web -->
    <meta name="viewport" content="width-device-width,initial-scale=1.0">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link href = "htpp://ues.fontawesome.com/release.v5.0.4/css/all.css" rel = "stylesheet">
    <script src = "http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src = "http://cdnjs.cloudflare.com/ajax.libs/popper.js/1.14.3/umd/popper/min.js"></script>
    <script src = "http://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link rel ="stylesheet"  type="text/css" href="styleHome.css" >
</head>
<body>
<nav class = "navbar navbar-expand-md navbar-light bg-light sticky-top">
    <div class="container-fluid">
        <a class="navbar-branch" href ="#">
            <img src="imgae/logo-barcelona-4.jpg" height="80">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id ="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class ="nav-item">
                    <a class="nav-link" active href ="Signup.jsp">Sign up</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href ="index.jsp">Sign in</a>
                </li>
                <li class ="nav-item">
                    <a class="nav-link" href ="cart.jsp">Cart</a>
                </li>
                </li>
            </ul>
        </div>
    </div>
</nav>


<div id ="slides" class="carousel slide" data-ride="carousel">
    <ul class = "carousel-indicators">
        <li data-target="#slides" data-slide-to="0" class ="active"></li>

    </ul>
    <div class="carousel-caption">
        <a href="cart.jsp">
            <button type="button" class ="btn btn-outline-light btn-lg"><h1>payment</h1>
            </button>
        </a>
    </div>
    <div class ="carousel-inner">
        <div class="carousel-item active ">
            <img src="imgae/brigitte-tohm-buUFEtmNnjc-unsplash.jpg">
        </div>
    </div>
</div>
<div class="maincontainer">
    <div class="thecard">
        <div class="thefront">
            <img src="imgae/samsumS20.jpg" class="imgae" alt="" width="600" height="400">
        </div>
        <div class="theback">
            <h1>Samsung Galaxy S20</h1>
            <h3>Price 600$</h3>
            <form action="MainServlet" method="post">
                <lable for="quanlity">quanlity</lable>
                <input type="hidden" value="2" name="productID" />
                <input type="number" name="quanlity" id ="quanlity6">
                <input type="submit" value="add to cart">
            </form>
        </div>
    </div>
    <div class="thecard1">
        <div class="thefront1">
            <img src="imgae/Huawei%20Freebuds%204i.jpg" class="imgae1" alt="" width="600" height="400">
        </div>
        <div class="theback1"><h1>Huawei Freebuds 4i</h1>
            <h3>Price 75$</h3>
            <form action="MainServlet" method="post">
                <lable for="quanlity">quanlity</lable>
                <input type="hidden" value="9" name="productID" />
                <input type="number" name="quanlity" id ="quanlity7">
                <input type="submit" value="add to cart">
            </form>
        </div>
    </div>
    <div class="thecard2">
        <div class="thefront2">
            <img src="imgae/JBL Quantum 50.jpg" class="imgae2" alt="" width="600" height="400">
        </div>
        <div class="theback2"><h1>JBL Quantum 50</h1>
            <h3>Price 30$</h3>
            <form action="MainServlet" method="post">
                <lable for="quanlity">quanlity</lable>
                <input type="number" name="quanlity" id ="quanlity8">
                <input type="hidden" value="8" name="productID" />
                <input type="submit" value="add to cart">
            </form>
        </div>
    </div>
    <div class="thecard3">
        <div class="thefront3">
            <img src="imgae/Acer Aspire 5.jpg" class="imgae3" alt="" width="600" height="400">
        </div>
        <div class="theback3"><h1>Acer Aspire 5</h1>
            <h3>Price 800$</h3>
            <form action="MainServlet" method="post">
                <lable for="quanlity">quanlity</lable>
                <input type="hidden" value="11" name="productID" />
                <input type="number" name="quanlity" id ="quanlity9">
                <input type="submit" value="add to cart">
            </form>
        </div>
    </div>
    <div class="thecard4">
        <div class="thefront4">
            <img src="imgae/Ankle Socks.jpg" class="imgae4" alt="" width="600" height="400">
        </div>
        <div class="theback4"><h1>Ankle Socks</h1>
            <h3>Price 15$</h3>
            <form action="MainServlet" method="post">
                <lable for="quanlity">quanlity</lable>
                <input type="hidden" value="14" name="productID" />
                <input type="number" name="quanlity" id ="quanlity10">
                <input type="submit" value="add to cart">
            </form>
        </div>
    </div>
</div>
<div class="numberdasdsa" >
    <nav aria-label="Page navigation">
        <ul class="pagination" >
            <a class="page-link" href="page1.jsp">Previous</a>
            <a class="page-link" href="page1.jsp">1</a>
            <a class="page-link" href="page2.jsp">2</a>
            <a class="page-link" href="page3.jsp">3</a>
            <a class="page-link" href="page3.jsp">Next</a>
        </ul>
    </nav>
</div>
<footer class="footer">
    <a>Copyright notice</a><br>
    <a>Connect to </a> <br>
    <a>Gmail phamchaugiatu@gmail.com </a>
    <br>    <a>Phone 08339999999 (Mr Ch??u)</a>
    <br>    <a> <a href="https://www.facebook.com/ronadol.cristino/"> Chau dep trai </a>for more information </a>
</footer>
</html>