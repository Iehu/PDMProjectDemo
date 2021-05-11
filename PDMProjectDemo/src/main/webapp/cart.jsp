<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 5/11/2021
  Time: 9:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Cart</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link rel="stylesheet" href="main.css" />
    <link rel="stylesheet" href="cart.css" />
    <script
            src="https://kit.fontawesome.com/332a215f17.js"
            crossorigin="anonymous"
    ></script>

    <!-- Bootstrap CSS -->
    <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
            integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
            crossorigin="anonymous"
    />
</head>
<body>
<section>
    <!--Nav-->
    <ul>
        <li><a href="page1.jsp">Home</a></li>
        <li><a href="#news">News</a></li>
        <li><a href="#contact">Contact</a></li>
        <li><a href="#about">About</a></li>
    </ul>

    <!---Hero Section-->
    <section id="hero">
        <div class="hero-container">
            <div class="hero-logo">
                <h1 class="font-weight-bold">Cart Products</h1>
            </div>
        </div>
    </section>
    <!---End of Hero Section-->
    <!--Cart Section-->
    <section class="mt-5">
        <div class="container">
            <div class="cart">
                <div class="table-responsive">
                    <table class="table">
                        <thead class="thead-dark">
                        <tr>
                            <th scope="col" class="text-white">Product</th>
                            <th scope="col" class="text-white">Price</th>
                            <th scope="col" class="text-white">Quantity</th>
                            <th scope="col" class="text-white">Total</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>
                                <div class="main">
                                    <div class="des">
                                        <p>lorem ipsum</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <h6>$20.00</h6>
                            </td>
                            <td>
                                <div class="counter">
                                    <i class="fas fa-angle-down"></i>
                                    <input
                                            class="input-number"
                                            type="text"
                                            value="1"
                                            min="0"
                                            max="10"
                                    />
                                    <i class="fas fa-angle-up"></i>
                                </div>
                            </td>
                            <td>
                                <h6>$20.00</h6>
                            </td>
                        </tr>
                        <!----->
                        <tr>
                            <td>
                                <div class="main">
                                    <div class="des">
                                        <p>lorem ipsum</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <h6>$20.00</h6>
                            </td>
                            <td>
                                <div class="counter">
                                    <i class="fas fa-angle-down"></i>
                                    <input
                                            class="input-number"
                                            type="text"
                                            value="1"
                                            min="0"
                                            max="10"
                                    />
                                    <i class="fas fa-angle-up"></i>
                                </div>
                            </td>
                            <td>
                                <h6>$20.00</h6>
                            </td>
                        </tr>
                        <!----->
                        <tr>
                            <td>
                                <div class="main">
                                    <div class="des">
                                        <p>lorem ipsum</p>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <h6>$20.00</h6>
                            </td>
                            <td>
                                <div class="counter">
                                    <i class="fas fa-angle-down"></i>
                                    <input
                                            class="input-number"
                                            type="text"
                                            value="1"
                                            min="0"
                                            max="10"
                                    />
                                    <i class="fas fa-angle-up"></i>
                                </div>
                            </td>
                            <td>
                                <h6>$20.00</h6>
                            </td>
                        </tr>
                        <!----->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
    <div class="col-lg-4 offset-lg-4">
        <div class="checkout">
            <ul>
                <li class="subtotal">
                    subtotal
                    <span>$60.00</span>
                </li>
                <li class="cart-total">Total <span>$60.00</span></li>
            </ul>
            <a href="thank.jsp" class="proceed-btn">Proceed to Checkout</a>
        </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script
            src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"
    ></script>
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"
    ></script>
    <script
            src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"
    ></script>
</body>
</html>
