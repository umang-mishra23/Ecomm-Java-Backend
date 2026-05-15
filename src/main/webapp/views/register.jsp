<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <meta http-equiv="X-UA-Compatible"
          content="ie=edge">

    <title>Register - Umang Shop</title>

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
            min-height:100vh;
            background:linear-gradient(135deg,#141e30,#243b55);
            overflow-x:hidden;
        }

        .main-container{
            display:flex;
            min-height:100vh;
        }

        /* LEFT SIDE */

        .left-side{
            flex:1;
            display:flex;
            justify-content:center;
            align-items:center;
            padding:60px;
            color:white;
        }

        .left-content h1{
            font-size:58px;
            font-weight:700;
            margin-bottom:20px;
        }

        .left-content p{
            font-size:20px;
            line-height:1.8;
            color:#ddd;
            max-width:500px;
        }

        /* RIGHT SIDE */

        .right-side{
            flex:1;
            display:flex;
            justify-content:center;
            align-items:center;
            padding:40px 20px;
        }

        .register-card{
            width:100%;
            max-width:480px;
            padding:45px;
            border-radius:25px;
            background:rgba(255,255,255,0.12);
            backdrop-filter:blur(12px);
            box-shadow:0 8px 32px rgba(0,0,0,0.25);
            border:1px solid rgba(255,255,255,0.18);
            color:white;
        }

        .register-card h2{
            text-align:center;
            margin-bottom:12px;
            font-weight:700;
        }

        .register-card p{
            text-align:center;
            color:#ddd;
            margin-bottom:30px;
        }

        .form-group label{
            font-weight:500;
        }

        .form-control{
            height:50px;
            border:none;
            border-radius:12px;
            background:rgba(255,255,255,0.15);
            color:white;
            padding-left:15px;
        }

        textarea.form-control{
            height:auto;
        }

        .form-control::placeholder{
            color:#ddd;
        }

        .form-control:focus{
            background:rgba(255,255,255,0.22);
            color:white;
            box-shadow:none;
        }

        .form-text{
            color:#ddd !important;
        }

        .btn-register{
            width:100%;
            height:50px;
            border:none;
            border-radius:30px;
            background:linear-gradient(90deg,#00c6ff,#0072ff);
            color:white;
            font-size:18px;
            font-weight:600;
            transition:0.3s;
            margin-top:10px;
        }

        .btn-register:hover{
            transform:translateY(-2px);
            box-shadow:0 8px 20px rgba(0,198,255,0.4);
        }

        .login-link{
            text-align:center;
            margin-top:20px;
            color:#ddd;
        }

        .login-link a{
            color:#00c6ff;
            text-decoration:none;
            font-weight:600;
        }

        .login-link a:hover{
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

        }

    </style>

</head>

<body>

<div class="main-container">

    <!-- LEFT -->

    <div class="left-side">

        <div class="left-content">

            <h1>Create Account</h1>

            <p>
                Join Umang Shop today and explore
                premium products, amazing offers,
                and a modern shopping experience.
            </p>

        </div>

    </div>

    <!-- RIGHT -->

    <div class="right-side">

        <div class="register-card">

            <h2>Sign Up</h2>

            <p>
                Create your account to continue
            </p>

            <form action="newuserregister" method="post">

                <input type="hidden"
                       name="${_csrf.parameterName}"
                       value="${_csrf.token}"/>

                <!-- USERNAME -->

                <div class="form-group">

                    <label for="username">

                        Username

                    </label>

                    <input type="text"
                           name="username"
                           id="username"
                           required
                           class="form-control"
                           placeholder="Enter your username">

                </div>

                <!-- EMAIL -->

                <div class="form-group">

                    <label for="email">

                        Email Address

                    </label>

                    <input type="email"
                           name="email"
                           id="email"
                           required
                           class="form-control"
                           placeholder="Enter your email">

                    <small class="form-text">
                        We’ll never share your email.
                    </small>

                </div>

                <!-- PASSWORD -->

                <div class="form-group">

                    <label for="password">

                        Password

                    </label>

                    <input type="password"
                           name="password"
                           id="password"
                           required
                           class="form-control"
                           placeholder="Enter your password">

                </div>

                <!-- ADDRESS -->

                <div class="form-group">

                    <label for="address">

                        Address

                    </label>

                    <textarea class="form-control"
                              rows="4"
                              name="address"
                              id="address"
                              placeholder="Enter your address"></textarea>

                </div>

                <!-- BUTTON -->

                <button type="submit"
                        class="btn-register">

                    <i class="fas fa-user-plus"></i>

                    Register

                </button>

                <!-- LOGIN LINK -->

                <div class="login-link">

                    Already have an account?

                    <a href="/">
                        Login Here
                    </a>

                </div>

                <!-- ERROR MESSAGE -->

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