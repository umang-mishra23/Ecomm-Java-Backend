<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*"%>

<!doctype html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Admin - Categories</title>

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

/* BUTTON */

.btn-add{
    background:linear-gradient(90deg,#00c6ff,#0072ff);
    border:none;
    color:white;
    padding:10px 20px;
    border-radius:30px;
    font-weight:600;
}

/* TABLE CARD */

.card-box{
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

/* ACTION BUTTONS */

.btn-edit{
    background:#ffb703;
    border:none;
    color:white;
    padding:6px 12px;
    border-radius:20px;
}

.btn-delete{
    background:#ef233c;
    border:none;
    color:white;
    padding:6px 12px;
    border-radius:20px;
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

    <h2>Category Management</h2>

    <button class="btn-add"
            data-toggle="modal"
            data-target="#addCategoryModal">

        <i class="fas fa-plus"></i> Add Category

    </button>

</div>

<!-- ADD MODAL -->

<div class="modal fade" id="addCategoryModal">

    <div class="modal-dialog">

        <div class="modal-content">

            <form action="categories" method="post">

                <input type="hidden"
                       name="${_csrf.parameterName}"
                       value="${_csrf.token}"/>

                <div class="modal-header">

                    <h5>Add Category</h5>

                </div>

                <div class="modal-body">

                    <input type="text"
                           name="categoryname"
                           class="form-control"
                           placeholder="Category Name"
                           required>

                </div>

                <div class="modal-footer">

                    <button class="btn btn-secondary"
                            data-dismiss="modal">
                        Close
                    </button>

                    <button class="btn btn-primary">
                        Save
                    </button>

                </div>

            </form>

        </div>

    </div>

</div>

<!-- TABLE -->

<div class="card-box">

<table class="table table-hover">

<thead>

<tr>

<th>ID</th>

<th>Category</th>

<th>Delete</th>

<th>Update</th>

</tr>

</thead>

<tbody>

<c:forEach var="category" items="${categories}">

<tr>

<td>${category.id}</td>

<td>${category.name}</td>

<td>

<form action="categories/delete" method="post">

<input type="hidden"
       name="${_csrf.parameterName}"
       value="${_csrf.token}"/>

<input type="hidden" name="id" value="${category.id}">

<button class="btn-delete">
    Delete
</button>

</form>

</td>

<td>

<!-- UNIQUE MODAL ID FIX -->

<button class="btn-edit"
        data-toggle="modal"
        data-target="#updateModal${category.id}"
        onclick="document.getElementById('name${category.id}').value='${category.name}'">

Update

</button>

<!-- UPDATE MODAL -->

<div class="modal fade"
     id="updateModal${category.id}">

<div class="modal-dialog">

<div class="modal-content">

<form action="categories/update" method="post">

<input type="hidden"
       name="${_csrf.parameterName}"
       value="${_csrf.token}"/>

<div class="modal-header">

<h5>Update Category</h5>

</div>

<div class="modal-body">

<input type="hidden"
       name="categoryid"
       value="${category.id}">

<input type="text"
       id="name${category.id}"
       name="categoryname"
       class="form-control">

</div>

<div class="modal-footer">

<button class="btn btn-secondary"
        data-dismiss="modal">
Close
</button>

<button class="btn btn-primary">
Update
</button>

</div>

</form>

</div>

</div>

</div>

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