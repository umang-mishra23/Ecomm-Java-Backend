<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>403 - Access Denied</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<style>
body {
    background: linear-gradient(135deg, #eef2f3, #8e9eab);
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    font-family: Arial, sans-serif;
}

.error-card {
    background: #fff;
    padding: 40px;
    border-radius: 15px;
    text-align: center;
    box-shadow: 0 10px 25px rgba(0,0,0,0.15);
    max-width: 450px;
    width: 100%;
}

.error-code {
    font-size: 80px;
    font-weight: bold;
    color: #e74c3c;
}

.error-title {
    font-size: 24px;
    font-weight: 600;
    margin-bottom: 10px;
}

.error-text {
    color: #666;
    margin-bottom: 20px;
}

.btn-custom {
    background: #4e73df;
    color: white;
    padding: 10px 20px;
    border-radius: 8px;
    text-decoration: none;
    display: inline-block;
    transition: 0.3s;
}

.btn-custom:hover {
    background: #2e59d9;
    color: white;
    text-decoration: none;
}
</style>

</head>

<body>

<div class="error-card">

    <div class="error-code">403</div>

    <div class="error-title">Access Denied</div>

    <div class="error-text">
        You don’t have permission to view this page.<br>
        Please contact the administrator if you believe this is a mistake.
    </div>

    <a href="/" class="btn-custom">Go to Home</a>

</div>

</body>
</html>