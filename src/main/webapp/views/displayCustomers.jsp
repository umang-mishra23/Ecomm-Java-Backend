<%@page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Admin - Customers</title>

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
    margin:30px 0;
    text-align:center;
}

.header h2{
    font-weight:700;
    color:#243b55;
}

/* TABLE CONTAINER */

.table-box{
    background:white;
    padding:25px;
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

/* BADGE STYLE */

.badge-email{
    background:#00c6ff;
    color:white;
    padding:6px 10px;
    border-radius:20px;
    font-size:13px;
}

.address-text{
    color:#555;
}

/* EMPTY STATE */

.empty{
    text-align:center;
    padding:40px;
    color:#888;
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

<!-- HEADER -->

<div class="container">

<div class="header">

    <h2>Customer Management</h2>

</div>

<!-- TABLE BOX -->

<div class="table-box">

<table class="table table-hover">

<thead>

<tr>

<th>Name</th>

<th>Email</th>

<th>Address</th>

</tr>

</thead>

<tbody>

<c:choose>

<c:when test="${empty customers}">

<tr>

<td colspan="3" class="empty">

<i class="fas fa-users fa-2x"></i><br><br>

No customers found

</td>

</tr>

</c:when>

<c:otherwise>

<c:forEach var="customer" items="${customers}">

<tr>

<td>

<strong>${customer.username}</strong>

</td>

<td>

<span class="badge-email">

${customer.email}

</span>

</td>

<td class="address-text">

${customer.address}

</td>

</tr>

</c:forEach>

</c:otherwise>

</c:choose>

</tbody>

</table>

</div>

</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>