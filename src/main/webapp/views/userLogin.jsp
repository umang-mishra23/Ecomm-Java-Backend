<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Umang Shop - Login</title>

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
            height:100vh;
            overflow:hidden;
            background:linear-gradient(135deg,#141e30,#243b55);
        }

        .main-container{
            display:flex;
            height:100vh;
        }

        /* LEFT SIDE */

        .left-side{
            flex:1;
            display:flex;
            justify-content:center;
            align-items:center;
            color:white;
            padding:60px;
            position:relative;
        }

        .left-content{
            z-index:2;
        }

        .left-content h1{
            font-size:60px;
            font-weight:700;
            margin-bottom:20px;
        }

        .left-content p{
            font-size:20px;
            color:#ddd;
            line-height:1.8;
        }

        /* RIGHT SIDE */

        .right-side{
            flex:1;
            display:flex;
            justify-content:center;
            align-items:center;
            padding:40px;
        }

        .login-card{
            width:100%;
            max-width:420px;
            padding:45px;
            border-radius:25px;
            background:rgba(255,255,255,0.12);
            backdrop-filter:blur(12px);
            box-shadow:0 8px 32px rgba(0,0,0,0.25);
            border:1px solid rgba(255,255,255,0.18);
            color:white;
        }

        .login-card h2{
            text-align:center;
            margin-bottom:35px;
            font-weight:700;
        }

        .form-group label{
            font-weight:500;
        }

        .input-group{
            margin-top:8px;
        }

        .input-group-text{
            background:#00c6ff;
            border:none;
            color:white;
            border-radius:12px 0 0 12px;
        }

        .form-control{
            height:50px;
            border:none;
            border-radius:0 12px 12px 0;
            background:rgba(255,255,255,0.15);
            color:white;
        }

        .form-control::placeholder{
            color:#ddd;
        }

        .form-control:focus{
            background:rgba(255,255,255,0.2);
            color:white;
            box-shadow:none;
        }

        .btn-login{
            width:100%;
            height:50px;
            border:none;
            border-radius:30px;
            background:linear-gradient(90deg,#00c6ff,#0072ff);
            color:white;
            font-weight:600;
            font-size:18px;
            transition:0.3s;
        }

        .btn-login:hover{
            transform:translateY(-2px);
            box-shadow:0 8px 20px rgba(0,198,255,0.4);
        }

        .register-link{
            text-align:center;
            margin-top:20px;
            color:#ddd;
        }

        .register-link a{
            color:#00c6ff;
            text-decoration:none;
            font-weight:600;
        }

        .register-link a:hover{
            text-decoration:underline;
        }

        .error-msg{
            margin-top:20px;
            text-align:center;
            color:#ff6b6b;
            font-weight:600;
        }

        /* RESPONSIVE */

        @media(max-width:992px){

            .left-side{
                display:none;
            }

            .right-side{
                flex:1 1 100%;
            }

            .login-card{
                max-width:450px;
            }
        }

    </style>

</head>

<body>

<div class="main-container">

    <!-- LEFT SIDE -->

    <div class="left-side">

        <div class="left-content">

            <h1>Umang Shop</h1>

            <p>
                Shop smarter with premium products,
                modern collections, and amazing deals.
            </p>

        </div>

    </div>

    <!-- RIGHT SIDE -->

    <div class="right-side">

        <div class="login-card">

            <h2>User Login</h2>

            <form action="/userloginvalidate" method="post">

                <input type="hidden"
                       name="${_csrf.parameterName}"
                       value="${_csrf.token}"/>

                <!-- USERNAME -->

                <div class="form-group">

                    <label for="username">
                        Username / Email
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
                               placeholder="Enter your username"
                               required
                               class="form-control">

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
                               placeholder="Enter your password"
                               required
                               class="form-control">

                    </div>

                </div>

                <!-- LOGIN BUTTON -->

                <button type="submit" class="btn-login">

                    Login

                </button>

                <!-- REGISTER -->

                <div class="register-link">

                    Don't have an account?

                    <a href="/register">
                        Register Here
                    </a>

                </div>

                <!-- ERROR -->

                <div class="error-msg">

                    ${msg}

                </div>

            </form>

        </div>

    </div>

</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>