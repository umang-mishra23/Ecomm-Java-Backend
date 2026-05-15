<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Admin - Products</title>

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
    font-family:'Poppins',sans-serif;
    background:#f4f7fc;
}

/* NAVBAR */

.navbar{
    background:linear-gradient(90deg,#141e30,#243b55);
    padding:15px 30px;
}

.navbar-brand{
    color:white !important;
    font-weight:700;
}

.nav-link{
    color:white !important;
}

/* HEADER */

.header{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin:30px 0;
}

.header h2{
    font-weight:700;
    color:#243b55;
}

/* ADD BUTTON */

.btn-add{
    background:linear-gradient(90deg,#00c6ff,#0072ff);
    border:none;
    color:white;
    padding:10px 18px;
    border-radius:30px;
    font-weight:600;
}

/* CARD TABLE */

.table-box{
    background:white;
    padding:20px;
    border-radius:18px;
    box-shadow:0 6px 20px rgba(0,0,0,0.08);
}

/* TABLE */

.table thead{
    background:#243b55;
    color:white;
}

.table tbody tr:hover{
    background:#f6f9ff;
}

/* PRODUCT IMAGE */

.product-img{
    width:80px;
    height:80px;
    object-fit:cover;
    border-radius:12px;
    border:2px solid #eee;
}

/* BUTTONS */

.btn-delete{
    background:#ef233c;
    border:none;
    color:white;
    padding:6px 12px;
    border-radius:20px;
}

.btn-update{
    background:#ffb703;
    border:none;
    color:white;
    padding:6px 12px;
    border-radius:20px;
}

/* PRICE */

.price{
    font-weight:600;
    color:#2a9d8f;
}

</style>

</head>

<body>

<!-- NAVBAR -->

<nav class="navbar navbar-expand-lg navbar-dark">

    <a class="navbar-brand" href="#">Admin Panel</a>

    <div class="ml-auto">

        <a class="nav-link d-inline" href="/admin/">Home</a>
        <a class="nav-link d-inline" href="/logout">Logout</a>

    </div>

</nav>

<div class="container">

<!-- HEADER -->

<div class="header">

    <h2>Product Management</h2>

    <a href="/admin/products/add"
       class="btn-add">

        <i class="fas fa-plus"></i> Add Product

    </a>

</div>

<!-- TABLE -->

<div class="table-box">

<table class="table table-hover">

<thead>

<tr>

<th>ID</th>

<th>Name</th>

<th>Category</th>

<th>Image</th>

<th>Qty</th>

<th>Price</th>

<th>Weight</th>

<th>Description</th>

<th>Delete</th>

<th>Update</th>

</tr>

</thead>

<tbody>

<c:forEach var="product" items="${products}">

<tr>

<td>${product.id}</td>

<td><strong>${product.name}</strong></td>

<td>${product.category.name}</td>

<td>

<img class="product-img"
     src="${product.image}">

</td>

<td>${product.quantity}</td>

<td class="price">₹ ${product.price}</td>

<td>${product.weight}</td>

<td>${product.description}</td>

<td>

<form action="products/delete" method="post">

<input type="hidden"
       name="${_csrf.parameterName}"
       value="${_csrf.token}"/>

<input type="hidden"
       name="id"
       value="${product.id}">

<button class="btn-delete">
    Delete
</button>

</form>

</td>

<td>

<form action="products/update/${product.id}" method="get">

<button class="btn-update">
    Update
</button>

</form>

</td>

</tr>

</c:forEach>

</tbody>

</table>

</div>

</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>