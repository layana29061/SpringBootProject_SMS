<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Department Details</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="/css/common.css" rel="stylesheet">
<style>
.main--content {
	background: #ebe9e9;
}

.form-group label {
	color: #000;
}

.form-group {
	margin-left: 20%;
	padding-top:5%;
}
.form-row{
	margin-top:9%
}
.profile-img {
	width: 80%;
	height: 80%;
	margin: auto;
	display: block;
}

.header--wrapper {
	background: #000;
}

.header--title {
	color: #fff;
}

.custom-btn {
	background-color: black;
	color: white;
	margin-left: 20%;
}
</style>
</head>
<body>
	<div class="main--content">
		<div class="header--wrapper">
			<div class="header--title">
				<!-- <span>Primary</span> -->
				<h2>Add Department Details</h2>
			</div>
		</div>
		<div class="row">
			<div class=" col-6 mt-5">
				<img src="/images/dept-img.png" alt="Staff Management Image"
					class="profile-img img-fluid">
			</div>
			<div class="col-6 ml-4">
				<form method="post">
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="departmentId">Department Id</label> <input
								type="number" class="form-control" name="departmentId"
								placeholder="Enter  New Department Id ">
						</div>
						<div class="form-group col-md-6">
							<label for="departmentName">Department Name</label> <input
								type="text" class="form-control" name="departmentName"
								placeholder="Enter New Department Name">
						</div>
					</div>
					<input type="submit" class="btn custom-btn mt-4" />
				</form>
			</div>
		</div>
	</div>
</body>
</html>