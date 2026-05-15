<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Add Product - Admin</title>

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

/* CARD */

.form-card{
    background:white;
    border-radius:18px;
    padding:30px;
    margin-top:30px;
    box-shadow:0 6px 20px rgba(0,0,0,0.08);
}

/* TITLE */

.page-title{
    text-align:center;
    margin-top:25px;
}

.page-title h2{
    font-weight:700;
    color:#243b55;
}

/* INPUTS */

.form-control{
    border-radius:10px;
    height:45px;
}

textarea.form-control{
    height:auto;
}

/* IMAGE PREVIEW */

.preview-img{
    width:120px;
    height:120px;
    object-fit:cover;
    border-radius:12px;
    border:2px solid #ddd;
    margin-top:10px;
}

/* BUTTON */

.btn-submit{
    background:linear-gradient(90deg,#00c6ff,#0072ff);
    border:none;
    color:white;
    padding:12px;
    width:100%;
    border-radius:30px;
    font-weight:600;
    margin-top:15px;
}

.btn-submit:hover{
    transform:translateY(-2px);
}

/* LABEL */

label{
    font-weight:600;
    color:#333;
}

</style>

</head>

<body>

<!-- NAVBAR -->

<nav class="navbar navbar-expand-lg navbar-dark">

    <a class="navbar-brand" href="#">Admin Panel</a>

    <div class="ml-auto">

        <a class="nav-link d-inline text-white" href="/adminhome">Home</a>
        <a class="nav-link d-inline text-white" href="/logout">Logout</a>

    </div>

</nav>

<!-- TITLE -->

<div class="page-title">

    <h2>Add New Product</h2>

</div>

<!-- FORM CARD -->

<div class="container">

<div class="form-card">

<form action="/admin/products/add" method="post">

<input type="hidden"
       name="${_csrf.parameterName}"
       value="${_csrf.token}"/>

<div class="row">

<!-- LEFT SIDE -->

<div class="col-md-6">

    <div class="form-group">

        <label>Name</label>

        <input type="text"
               name="name"
               class="form-control"
               required>

    </div>

    <div class="form-group">

        <label>Category</label>

        <select class="form-control"
                name="categoryid"
                required>

            <option value="">Select Category</option>

            <c:forEach var="category" items="${categories}">

                <option value="${category.id}">

                    ${category.name}

                </option>

            </c:forEach>

        </select>

    </div>

    <div class="form-group">

        <label>Price</label>

        <input type="number"
               name="price"
               class="form-control"
               required>

    </div>

    <div class="form-group">

        <label>Weight (grams)</label>

        <input type="number"
               name="weight"
               class="form-control"
               required>

    </div>

    <div class="form-group">

        <label>Quantity</label>

        <input type="number"
               name="quantity"
               class="form-control"
               required>

    </div>

</div>

<!-- RIGHT SIDE -->

<div class="col-md-6">

    <div class="form-group">

        <label>Description</label>

        <textarea class="form-control"
                  name="description"
                  rows="5"></textarea>

    </div>

    <div class="form-group">

        <label>Image URL</label>

        <input type="text"
               class="form-control"
               name="productImage"
               id="imgInput"
               placeholder="Paste image URL"
               required>

    </div>

    <div>

        <label>Preview</label><br>

        <img id="imgPreview"
             class="preview-img"
             src="https://via.placeholder.com/120">

    </div>

</div>

</div>

<button type="submit"
        class="btn-submit">

    <i class="fas fa-plus"></i> Add Product

</button>

</form>

</div>

</div>

<!-- JS -->

<script>

document.getElementById("imgInput").addEventListener("input", function(){

    document.getElementById("imgPreview").src = this.value;

});

</script>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>