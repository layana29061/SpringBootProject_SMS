<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link href="/css/login.css" rel="stylesheet">
</head>
<body>
	<!-- navigation bar -->
	<!-- 	<header class="p-3 text-bg-dark"">
		<div class="container"">
			<div
				class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start"
				style="user-select: auto;">
					<h3>Login Page</h3>
			</div>
		</div>
	</header> -->
	<div class="sidenav">
		<div class="login-main-text">
			<h2>
				Application<br>Login Page
			</h2>
			<p>Login from here to access.</p>
		</div>
	</div>
	<div class="main">
		<div class="col-md-6 col-sm-12">
			<div class="login-form">
			
				<form method="post">
					<div class="form-group">
						<label>User Name</label> <input type="text" id="username"
							name="username" class="form-control"
							placeholder="Enter your username" value=""/><br>
					</div>
					<div class="form-group">
						<label for="username" class="form-label">Password</label> 
						<input type="password" id="password"
							name="password" class="form-control"
							placeholder="Enter your password" value=""  />
					</div>
					<br>
					<input type="submit" class="btn btn-black" value="LOGIN" />
				</form>
				<%-- <c:if test="${not empty error}">
					<div class="error">${error}</div>
				</c:if> --%>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>