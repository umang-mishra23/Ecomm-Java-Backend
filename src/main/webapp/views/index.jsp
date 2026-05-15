<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Umang Shop</title>

    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">

    <style>

        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
        }

        body{
            font-family:'Poppins', sans-serif;
            background:#f5f7fb;
            color:#333;
        }

        /* NAVBAR */

        .navbar{
            background: linear-gradient(90deg,#141e30,#243b55);
            padding:15px 40px;
            box-shadow:0 4px 12px rgba(0,0,0,0.1);
        }

        .navbar-brand{
            color:#fff !important;
            font-size:28px;
            font-weight:700;
        }

        .navbar-nav .nav-link{
            color:#fff !important;
            margin-left:15px;
            font-weight:500;
            transition:0.3s;
        }

        .navbar-nav .nav-link:hover{
            color:#00d4ff !important;
        }

        .welcome-text{
            color:white;
            font-weight:500;
            margin-right:20px;
        }

        /* HERO SECTION */

        .hero{
            background: linear-gradient(rgba(0,0,0,0.5),
                        rgba(0,0,0,0.5)),
                        url('https://images.unsplash.com/photo-1523275335684-37898b6baf30?q=80&w=1200');
            background-size:cover;
            background-position:center;
            height:350px;
            display:flex;
            align-items:center;
            justify-content:center;
            text-align:center;
            color:white;
            margin-bottom:50px;
        }

        .hero h1{
            font-size:55px;
            font-weight:700;
        }

        .hero p{
            font-size:20px;
            margin-top:10px;
        }

        /* SECTION TITLE */

        .section-title{
            text-align:center;
            margin-bottom:40px;
        }

        .section-title h2{
            font-size:38px;
            font-weight:700;
            color:#243b55;
        }

        /* PRODUCT CARD */

        .product-card{
            border:none;
            border-radius:18px;
            overflow:hidden;
            background:white;
            transition:0.4s;
            box-shadow:0 6px 18px rgba(0,0,0,0.08);
            margin-bottom:30px;
            height:100%;
        }

        .product-card:hover{
            transform:translateY(-10px);
            box-shadow:0 12px 25px rgba(0,0,0,0.15);
        }

        .product-image{
            height:240px;
            object-fit:contain;
            padding:20px;
            background:#f8f9fa;
        }

        .card-body{
            padding:20px;
        }

        .product-name{
            font-size:22px;
            font-weight:600;
            margin-bottom:10px;
            color:#222;
        }

        .category{
            font-size:14px;
            color:#777;
            margin-bottom:10px;
        }

        .price{
            font-size:24px;
            color:#007bff;
            font-weight:700;
            margin-bottom:15px;
        }

        .description{
            font-size:14px;
            color:#666;
            min-height:60px;
        }

        .btn-cart{
            width:100%;
            border:none;
            border-radius:30px;
            padding:12px;
            background:linear-gradient(90deg,#007bff,#00c6ff);
            color:white;
            font-weight:600;
            transition:0.3s;
        }

        .btn-cart:hover{
            background:linear-gradient(90deg,#0056b3,#0096c7);
        }

        /* FOOTER */

        footer{
            background:#141e30;
            color:white;
            text-align:center;
            padding:25px;
            margin-top:60px;
        }

        /* RESPONSIVE */

        @media(max-width:768px){

            .hero h1{
                font-size:38px;
            }

            .hero p{
                font-size:16px;
            }
        }

    </style>
</head>

<body>

<!-- NAVBAR -->

<nav class="navbar navbar-expand-lg navbar-dark">

    <a class="navbar-brand" href="#">
        Umang Shop
    </a>

    <button class="navbar-toggler"
            type="button"
            data-toggle="collapse"
            data-target="#navbarNav">

        <span class="navbar-toggler-icon"></span>

    </button>

    <div class="collapse navbar-collapse" id="navbarNav">

        <ul class="navbar-nav ml-auto">

            <li class="nav-item">
                <span class="welcome-text">
                    Welcome ${username}
                </span>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="/">
                    <i class="fas fa-shopping-cart"></i> Cart
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="profileDisplay">
                    <i class="fas fa-user"></i> Profile
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="logout">
                    <i class="fas fa-sign-out-alt"></i> Logout
                </a>
            </li>

        </ul>

    </div>

</nav>

<!-- HERO -->

<section class="hero">

    <div>

        <h1>Welcome to Umang Shop</h1>

        <p>Discover Amazing Products at Best Prices</p>

    </div>

</section>

<!-- PRODUCTS -->

<div class="container">

    <div class="section-title">

        <h2>Featured Products</h2>

    </div>

    <div class="row">

        <c:forEach var="product" items="${products}">

            <div class="col-lg-3 col-md-6">

                <div class="card product-card">

                    <img class="product-image"
                         src="${product.image}"
                         alt="${product.name}">

                    <div class="card-body">

                        <h4 class="product-name">
                            ${product.name}
                        </h4>

                        <div class="category">
                            ${product.category.name}
                        </div>

                        <div class="price">
                            Rs. ${product.price}
                        </div>

                        <p class="description">
                            ${product.description}
                        </p>

                        <button class="btn btn-cart">
                            <i class="fas fa-cart-plus"></i>
                            Add To Cart
                        </button>

                    </div>

                </div>

            </div>

        </c:forEach>

    </div>

</div>

<!-- FOOTER -->

<footer>

    <p>
        © 2026 Umang Shop. All Rights Reserved.
    </p>

</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>