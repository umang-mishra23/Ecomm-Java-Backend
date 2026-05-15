<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <meta http-equiv="X-UA-Compatible"
          content="ie=edge">

    <title>User Profile</title>

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
            display:flex;
            justify-content:center;
            align-items:center;
            padding:40px 15px;
        }

        .profile-container{
            width:100%;
            max-width:900px;
        }

        .profile-card{
            display:flex;
            overflow:hidden;
            border-radius:25px;
            background:rgba(255,255,255,0.12);
            backdrop-filter:blur(12px);
            box-shadow:0 8px 32px rgba(0,0,0,0.25);
            border:1px solid rgba(255,255,255,0.18);
        }

        /* LEFT SIDE */

        .profile-left{
            width:35%;
            background:linear-gradient(135deg,#00c6ff,#0072ff);
            color:white;
            padding:40px 25px;
            text-align:center;
            display:flex;
            flex-direction:column;
            justify-content:center;
            align-items:center;
        }

        .profile-avatar{
            width:120px;
            height:120px;
            border-radius:50%;
            background:white;
            color:#0072ff;
            display:flex;
            justify-content:center;
            align-items:center;
            font-size:50px;
            margin-bottom:20px;
        }

        .profile-left h2{
            font-weight:700;
            margin-bottom:10px;
        }

        .profile-left p{
            opacity:0.9;
            font-size:15px;
        }

        /* RIGHT SIDE */

        .profile-right{
            width:65%;
            padding:45px;
            color:white;
        }

        .profile-right h3{
            margin-bottom:30px;
            font-weight:700;
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

        .btn-update{
            width:100%;
            height:50px;
            border:none;
            border-radius:30px;
            background:linear-gradient(90deg,#00c6ff,#0072ff);
            color:white;
            font-size:18px;
            font-weight:600;
            transition:0.3s;
            margin-top:15px;
        }

        .btn-update:hover{
            transform:translateY(-2px);
            box-shadow:0 8px 20px rgba(0,198,255,0.4);
        }

        /* RESPONSIVE */

        @media(max-width:768px){

            .profile-card{
                flex-direction:column;
            }

            .profile-left,
            .profile-right{
                width:100%;
            }

            .profile-right{
                padding:30px 20px;
            }

        }

    </style>

</head>

<body>

<div class="profile-container">

    <div class="profile-card">

        <!-- LEFT SECTION -->

        <div class="profile-left">

            <div class="profile-avatar">

                <i class="fas fa-user"></i>

            </div>

            <h2>${username}</h2>

            <p>
                Manage your account details and
                keep your profile updated.
            </p>

        </div>

        <!-- RIGHT SECTION -->

        <div class="profile-right">

            <h3>
                Update Profile
            </h3>

            <form action="updateuser" method="post">

                <input type="hidden"
                       name="${_csrf.parameterName}"
                       value="${_csrf.token}"/>

                <input type="hidden"
                       name="userid"
                       value="${userid}">

                <!-- USERNAME -->

                <div class="form-group">

                    <label for="username">

                        Username

                    </label>

                    <input type="text"
                           name="username"
                           id="username"
                           value="${username}"
                           required
                           class="form-control"
                           placeholder="Enter username">

                </div>

                <!-- EMAIL -->

                <div class="form-group">

                    <label for="email">

                        Email Address

                    </label>

                    <input type="email"
                           name="email"
                           id="email"
                           value="${email}"
                           required
                           class="form-control"
                           placeholder="Enter email">

                    <small class="form-text">
                        We’ll never share your email.
                    </small>

                </div>

                <!-- PASSWORD -->

                <div class="form-group">

                    <label for="password">

                        New Password

                    </label>

                    <input type="password"
                           name="password"
                           id="password"
                           class="form-control"
                           placeholder="Leave blank to keep old password">

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
                              placeholder="Enter your address">${address}</textarea>

                </div>

                <!-- BUTTON -->

                <button type="submit"
                        class="btn-update">

                    <i class="fas fa-save"></i>

                    Update Profile

                </button>

            </form>

        </div>

    </div>

</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>