<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Staff Details</title>
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

.profile-img {
	width: 60%;
	height: 60%;
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

.form-row {
	margin-top: 8%;
}
</style>
</head>
<body>
	<div class="main--content">
		<div class="header--wrapper">
			<div class="header--title">
				<!-- <span>Primary</span> -->
				<h2>Update Staff Details</h2>
			</div>
		</div>
		<div class="row">
			<div class=" col-6 mt-5">
				<img src="/images/add-image.jpg" alt="Staff Management Image"
					class="profile-img img-fluid">
			</div>
			<div class="col-6 ml-4">
				<form method="post">
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="departmentId">Staff ID</label> <input type="number"
								class="form-control" name="departmentId"
								value="${department.departmentId}"
								placeholder="Enter Department ID">
						</div>
						<div class="form-group col-md-6">
							<label for="departmentName">Department Name</label> <input
								type="text" class="form-control" name="departmentName"
								value="${department.departmentName}"
								placeholder="Enter Department Name">
						</div>
					</div>
					
					<input type="submit" class="btn custom-btn mt-4" />
					
				</form>
			</div>
		</div>
	</div>
</body>
</html>