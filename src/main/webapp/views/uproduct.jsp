<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Products</title>

<!-- Bootstrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<style>
body {
    background: #f4f6f9;
    font-family: Arial, sans-serif;
}

/* Navbar shadow */
.navbar {
    box-shadow: 0 2px 10px rgba(0,0,0,0.1);
}

/* Card styling */
.card {
    border: none;
    border-radius: 12px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.08);
    transition: 0.3s;
}

.card:hover {
    transform: translateY(-5px);
}

/* Image styling */
.card-img-top {
    height: 200px;
    object-fit: cover;
}

/* Button */
.btn-warning {
    background: #ffb703;
    border: none;
    font-weight: bold;
}

.btn-warning:hover {
    background: #fb8500;
}

/* Title */
.page-title {
    text-align: center;
    margin: 20px 0;
    font-weight: bold;
}
</style>

</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">

        <a class="navbar-brand" href="#">
            <img src="../static/images/logo.png" height="40">
        </a>

        <div class="collapse navbar-collapse">

            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/adminhome">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/logout">Logout</a>
                </li>
            </ul>

        </div>

    </div>
</nav>

<!-- TITLE -->
<div class="container">
    <h2 class="page-title">All Products</h2>

    <!-- PRODUCTS GRID -->
    <div class="row">

        <c:forEach var="product" items="${products}">

            <div class="col-md-4 mb-4">

                <div class="card">

                    <img src="${product.image}" class="card-img-top">

                    <div class="card-body">

                        <h5 class="card-title">${product.name}</h5>

                        <p class="text-muted">
                            Category: ${product.category.name}
                        </p>

                        <p>${product.description}</p>

                        <p><b>Weight:</b> ${product.weight} g</p>

                        <p><b>Qty:</b> ${product.quantity}</p>

                        <h5 class="text-primary">
                            ₹ ${product.price}
                        </h5>

                        <form action="products/addtocart" method="get">
                            <input type="hidden" name="id" value="${product.id}">
                            <button type="submit" class="btn btn-warning btn-block">
                                Add To Cart
                            </button>
                        </form>

                    </div>

                </div>

            </div>

        </c:forEach>

    </div>
</div>

<!-- SCRIPTS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</body>
</html>