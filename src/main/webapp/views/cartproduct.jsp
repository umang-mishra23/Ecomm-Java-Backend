<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@page import ="java.io.FileOutputStream" %>
<%@page import=" java.io.ObjectOutputStream" %>

<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>

<meta charset="UTF-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1.0">

<meta http-equiv="X-UA-Compatible"
	content="ie=edge">

<title>Admin Dashboard</title>

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
	min-height:100vh;
}

/* NAVBAR */

.navbar{
	background:linear-gradient(90deg,#141e30,#243b55);
	padding:15px 40px;
	box-shadow:0 4px 12px rgba(0,0,0,0.15);
}

.navbar-brand{
	font-size:28px;
	font-weight:700;
	color:white !important;
}

.navbar-nav .nav-link{
	color:white !important;
	font-weight:500;
	margin-left:15px;
	transition:0.3s;
}

.navbar-nav .nav-link:hover{
	color:#00c6ff !important;
}

/* PAGE HEADER */

.page-header{
	display:flex;
	justify-content:space-between;
	align-items:center;
	margin:40px 0 25px;
	flex-wrap:wrap;
}

.page-header h2{
	font-weight:700;
	color:#243b55;
}

/* BUTTON */

.btn-add{
	background:linear-gradient(90deg,#00c6ff,#0072ff);
	color:white;
	border:none;
	padding:12px 24px;
	border-radius:30px;
	font-weight:600;
	transition:0.3s;
}

.btn-add:hover{
	transform:translateY(-2px);
	box-shadow:0 8px 20px rgba(0,198,255,0.35);
	color:white;
}

/* TABLE CARD */

.table-card{
	background:white;
	border-radius:20px;
	padding:25px;
	box-shadow:0 6px 20px rgba(0,0,0,0.08);
	overflow-x:auto;
}

/* TABLE */

.table{
	margin-bottom:0;
}

.table thead{
	background:linear-gradient(90deg,#141e30,#243b55);
	color:white;
}

.table thead th{
	border:none;
	padding:18px;
	font-weight:600;
}

.table tbody tr{
	transition:0.3s;
}

.table tbody tr:hover{
	background:#f7faff;
	transform:scale(1.01);
}

.table td{
	vertical-align:middle;
	padding:18px;
	border-top:1px solid #eee;
	font-size:15px;
}

/* DELETE BUTTON */

.btn-delete{
	background:#ff4d4f;
	color:white;
	border:none;
	padding:10px 18px;
	border-radius:25px;
	font-weight:500;
	transition:0.3s;
}

.btn-delete:hover{
	background:#e53935;
	transform:translateY(-2px);
	box-shadow:0 6px 16px rgba(255,77,79,0.35);
}

/* RESPONSIVE */

@media(max-width:768px){

	.page-header{
		flex-direction:column;
		align-items:flex-start;
	}

	.btn-add{
		margin-top:15px;
	}

}

</style>

</head>

<body>

<!-- NAVBAR -->

<nav class="navbar navbar-expand-lg navbar-dark">

	<div class="container-fluid">

		<a class="navbar-brand" href="#">

			<i class="fas fa-store"></i>

			Umang Admin

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
					   href="/adminhome">

						<i class="fas fa-home"></i>

						Home

					</a>

				</li>

				<li class="nav-item">

					<a class="nav-link"
					   href="/logout">

						<i class="fas fa-sign-out-alt"></i>

						Logout

					</a>

				</li>

			</ul>

		</div>

	</div>

</nav>

<!-- CONTENT -->

<div class="container-fluid px-4">

	<div class="page-header">

		<h2>

			<i class="fas fa-shopping-cart"></i>

			Product Management

		</h2>

		<a class="btn btn-add"
		   href="/user/products">

			<i class="fas fa-plus-circle"></i>

			Add Product

		</a>

	</div>

	<div class="table-card">

		<table class="table table-hover">

			<thead>

				<tr>

					<th>ID</th>

					<th>Product Name</th>

					<th>Price</th>

					<th>Description</th>

					<th>Action</th>

				</tr>

			</thead>

			<tbody>

			<%

			try {

				String url = "jdbc:mysql://localhost:3306/springproject";

				Class.forName("com.mysql.cj.jdbc.Driver");

				Connection con = DriverManager.getConnection(url, "root", "");

				Statement stmt = con.createStatement();

				ResultSet rs = stmt.executeQuery("select * from cart");

				while(rs.next()){

			%>

				<tr>

					<td>
						<%= rs.getInt(1) %>
					</td>

					<td>
						<%= rs.getString(2) %>
					</td>

					<td>

						₹ <%= rs.getString(3) %>

					</td>

					<td>
						<%= rs.getString(4) %>
					</td>

					<td>

						<form action="cart/delete"
							  method="get">

							<input type="hidden"
								   name="id"
								   value="<%=rs.getInt(1)%>">

							<button type="submit"
									class="btn-delete">

								<i class="fas fa-trash"></i>

								Delete

							</button>

						</form>

					</td>

				</tr>

			<%

				}

			}catch(Exception ex){

				out.println(
					"<tr><td colspan='5' style='color:red;'>"
					+ ex.getMessage()
					+ "</td></tr>"
				);

			}

			%>

			</tbody>

		</table>

	</div>

</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>