<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <meta http-equiv="X-UA-Compatible"
          content="ie=edge">

    <title>Admin Dashboard</title>

    <!-- Bootstrap -->

    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Font Awesome -->

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- Google Font -->

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
            min-height:100vh;
            overflow-x:hidden;
        }

        /* NAVBAR */

        .navbar{
            background:linear-gradient(90deg,#141e30,#243b55);
            padding:15px 40px;
            box-shadow:0 4px 12px rgba(0,0,0,0.15);
        }

        .navbar-brand{
            color:white !important;
            font-size:28px;
            font-weight:700;
        }

        .navbar-nav .nav-link{
            color:white !important;
            margin-left:15px;
            font-weight:500;
            transition:0.3s;
        }

        .navbar-nav .nav-link:hover{
            color:#00c6ff !important;
        }

        /* HERO */

        .hero-section{
            background:linear-gradient(135deg,#141e30,#243b55);
            color:white;
            padding:70px 20px;
            text-align:center;
            border-radius:0 0 40px 40px;
            margin-bottom:50px;
            box-shadow:0 6px 20px rgba(0,0,0,0.15);
        }

        .hero-section h1{
            font-size:52px;
            font-weight:700;
            margin-bottom:15px;
        }

        .hero-section p{
            font-size:20px;
            color:#d1d5db;
        }

        /* DASHBOARD */

        .dashboard-container{
            padding:0 30px 50px;
        }

        .dashboard-title{
            text-align:center;
            margin-bottom:40px;
        }

        .dashboard-title h2{
            font-size:38px;
            font-weight:700;
            color:#243b55;
        }

        /* CARDS */

        .dashboard-card{
            border:none;
            border-radius:22px;
            overflow:hidden;
            background:white;
            transition:0.4s;
            box-shadow:0 6px 20px rgba(0,0,0,0.08);
            margin-bottom:30px;
            height:100%;
        }

        .dashboard-card:hover{
            transform:translateY(-10px);
            box-shadow:0 12px 30px rgba(0,0,0,0.15);
        }

        .card-top{
            height:8px;
            background:linear-gradient(90deg,#00c6ff,#0072ff);
        }

        .card-body{
            padding:35px 25px;
            text-align:center;
        }

        .dashboard-icon{
            width:85px;
            height:85px;
            border-radius:50%;
            margin:0 auto 20px;
            display:flex;
            justify-content:center;
            align-items:center;
            font-size:35px;
            color:white;
            background:linear-gradient(135deg,#00c6ff,#0072ff);
            box-shadow:0 8px 20px rgba(0,198,255,0.3);
        }

        .card-title{
            font-size:28px;
            font-weight:700;
            margin-bottom:15px;
            color:#243b55;
        }

        .card-text{
            color:#666;
            font-size:15px;
            margin-bottom:25px;
            line-height:1.7;
        }

        .btn-manage{
            border:none;
            border-radius:30px;
            padding:12px 28px;
            background:linear-gradient(90deg,#00c6ff,#0072ff);
            color:white;
            font-weight:600;
            transition:0.3s;
        }

        .btn-manage:hover{
            transform:translateY(-2px);
            box-shadow:0 8px 20px rgba(0,198,255,0.35);
            color:white;
        }

        /* RESPONSIVE */

        @media(max-width:768px){

            .hero-section h1{
                font-size:36px;
            }

            .hero-section p{
                font-size:16px;
            }

            .dashboard-title h2{
                font-size:30px;
            }

        }

    </style>

</head>

<body>

<!-- NAVBAR -->

<nav class="navbar navbar-expand-lg navbar-dark">

    <div class="container-fluid">

        <a class="navbar-brand" href="#">

            <i class="fas fa-user-shield"></i>

            Admin Panel

        </a>

        <button class="navbar-toggler"
                type="button"
                data-toggle="collapse"
                data-target="#navbarSupportedContent">

            <span class="navbar-toggler-icon"></span>

        </button>

        <div class="collapse navbar-collapse"
             id="navbarSupportedContent">

            <ul class="navbar-nav ml-auto">

                <li class="nav-item">

                    <a class="nav-link"
                       href="/admin/">

                        <i class="fas fa-home"></i>

                        Home

                    </a>

                </li>

                <li class="nav-item">

                    <a class="nav-link"
                       href="/admin/logout">

                        <i class="fas fa-sign-out-alt"></i>

                        Logout

                    </a>

                </li>

            </ul>

        </div>

    </div>

</nav>

<!-- HERO -->

<section class="hero-section">

    <h1>

        Welcome Back, Admin

    </h1>

    <p>

        Manage your entire ecommerce platform from one dashboard

    </p>

</section>

<!-- DASHBOARD -->

<div class="dashboard-container">

    <div class="dashboard-title">

        <h2>

            Dashboard Management

        </h2>

    </div>

    <div class="row justify-content-center">

        <!-- CATEGORY -->

        <div class="col-lg-4 col-md-6">

            <div class="dashboard-card">

                <div class="card-top"></div>

                <div class="card-body">

                    <div class="dashboard-icon">

                        <i class="fas fa-list"></i>

                    </div>

                    <h4 class="card-title">

                        Categories

                    </h4>

                    <p class="card-text">

                        Create, update, and manage
                        all product categories.

                    </p>

                    <a href="/admin/categories"
                       class="btn btn-manage">

                        Manage

                    </a>

                </div>

            </div>

        </div>

        <!-- PRODUCTS -->

        <div class="col-lg-4 col-md-6">

            <div class="dashboard-card">

                <div class="card-top"></div>

                <div class="card-body">

                    <div class="dashboard-icon">

                        <i class="fas fa-box-open"></i>

                    </div>

                    <h4 class="card-title">

                        Products

                    </h4>

                    <p class="card-text">

                        Add, edit, delete,
                        and organize products.

                    </p>

                    <a href="/admin/products"
                       class="btn btn-manage">

                        Manage

                    </a>

                </div>

            </div>

        </div>

        <!-- CUSTOMERS -->

        <div class="col-lg-4 col-md-6">

            <div class="dashboard-card">

                <div class="card-top"></div>

                <div class="card-body">

                    <div class="dashboard-icon">

                        <i class="fas fa-users"></i>

                    </div>

                    <h4 class="card-title">

                        Customers

                    </h4>

                    <p class="card-text">

                        View and manage all
                        registered customers.

                    </p>

                    <a href="/admin/customers"
                       class="btn btn-manage">

                        Manage

                    </a>

                </div>

            </div>

        </div>

    </div>

</div>

<!-- JS -->

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>