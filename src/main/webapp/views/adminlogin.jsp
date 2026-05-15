<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <meta http-equiv="X-UA-Compatible"
          content="ie=edge">

    <title>Admin Login</title>

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
            min-height:100vh;
            display:flex;
            justify-content:center;
            align-items:center;
            background:linear-gradient(135deg,#0f172a,#1e293b,#334155);
            overflow:hidden;
            position:relative;
        }

        /* BACKGROUND CIRCLES */

        body::before,
        body::after{

            content:'';
            position:absolute;
            border-radius:50%;
            filter:blur(80px);
            opacity:0.5;

        }

        body::before{
            width:300px;
            height:300px;
            background:#00c6ff;
            top:-100px;
            left:-100px;
        }

        body::after{
            width:350px;
            height:350px;
            background:#7f5af0;
            bottom:-120px;
            right:-120px;
        }

        /* LOGIN CARD */

        .admin-login-card{

            width:100%;
            max-width:430px;
            padding:45px;
            border-radius:25px;
            background:rgba(255,255,255,0.10);
            backdrop-filter:blur(14px);
            box-shadow:0 8px 32px rgba(0,0,0,0.35);
            border:1px solid rgba(255,255,255,0.15);
            color:white;
            z-index:10;

        }

        .admin-logo{

            width:90px;
            height:90px;
            border-radius:50%;
            background:linear-gradient(135deg,#00c6ff,#0072ff);
            display:flex;
            justify-content:center;
            align-items:center;
            margin:0 auto 25px;
            font-size:40px;
            color:white;
            box-shadow:0 6px 20px rgba(0,198,255,0.35);

        }

        .admin-login-card h2{

            text-align:center;
            margin-bottom:8px;
            font-weight:700;

        }

        .subtitle{

            text-align:center;
            color:#d1d5db;
            margin-bottom:35px;
            font-size:15px;

        }

        /* FORM */

        .form-group{

            margin-bottom:22px;

        }

        .form-group label{

            font-weight:500;
            margin-bottom:8px;

        }

        .input-group{

            border-radius:14px;
            overflow:hidden;

        }

        .input-group-text{

            background:#00c6ff;
            border:none;
            color:white;
            width:55px;
            justify-content:center;

        }

        .form-control{

            height:55px;
            border:none;
            background:rgba(255,255,255,0.12);
            color:white;
            font-size:15px;

        }

        .form-control::placeholder{

            color:#d1d5db;

        }

        .form-control:focus{

            background:rgba(255,255,255,0.18);
            color:white;
            box-shadow:none;

        }

        /* BUTTON */

        .btn-admin-login{

            width:100%;
            height:55px;
            border:none;
            border-radius:30px;
            background:linear-gradient(90deg,#00c6ff,#0072ff);
            color:white;
            font-size:18px;
            font-weight:600;
            transition:0.3s;

        }

        .btn-admin-login:hover{

            transform:translateY(-3px);
            box-shadow:0 10px 25px rgba(0,198,255,0.4);

        }

        /* ERROR */

        .error-msg{

            margin-top:20px;
            text-align:center;
            color:#ff6b6b;
            font-weight:600;

        }

        /* RESPONSIVE */

        @media(max-width:500px){

            .admin-login-card{

                margin:20px;
                padding:35px 25px;

            }

        }

    </style>

</head>

<body>

<div class="admin-login-card">

    <!-- ICON -->

    <div class="admin-logo">

        <i class="fas fa-user-shield"></i>

    </div>

    <!-- TITLE -->

    <h2>

        Admin Panel

    </h2>

    <div class="subtitle">

        Secure administrator login access

    </div>

    <!-- FORM -->

    <form action="/admin/loginvalidate"
          method="post">

        <input type="hidden"
               name="${_csrf.parameterName}"
               value="${_csrf.token}"/>

        <!-- USERNAME -->

        <div class="form-group">

            <label for="username">

                Username

            </label>

            <div class="input-group">

                <div class="input-group-prepend">

                    <span class="input-group-text">

                        <i class="fas fa-user"></i>

                    </span>

                </div>

                <input type="text"
                       name="username"
                       id="username"
                       class="form-control"
                       placeholder="Enter admin username"
                       required>

            </div>

        </div>

        <!-- PASSWORD -->

        <div class="form-group">

            <label for="password">

                Password

            </label>

            <div class="input-group">

                <div class="input-group-prepend">

                    <span class="input-group-text">

                        <i class="fas fa-lock"></i>

                    </span>

                </div>

                <input type="password"
                       name="password"
                       id="password"
                       class="form-control"
                       placeholder="Enter admin password"
                       required>

            </div>

        </div>

        <!-- BUTTON -->

        <button type="submit"
                class="btn-admin-login">

            <i class="fas fa-sign-in-alt"></i>

            Login

        </button>

        <!-- ERROR -->

        <div class="error-msg">

            ${msg}

        </div>

    </form>

</div>

<!-- JS -->

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>