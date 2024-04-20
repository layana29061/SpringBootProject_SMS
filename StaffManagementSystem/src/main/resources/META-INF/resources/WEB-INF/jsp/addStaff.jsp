<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Staff Details</title>
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
.form-group label{
	color:#000;
}
.form-group{
	margin-left:20%;
}
.profile-img{
	width: 80%;
    height: 80%;
    margin: auto;    
    display: block;
}

.header--wrapper {
	background:#000;
}
.header--title{
	color:#fff;
}
.custom-btn {
    background-color: black;
    color: white;
    margin-left:20%;
}

</style>
</head>
<body>
	<div class="main--content">
		<div class="header--wrapper">
			<div class="header--title">
				<!-- <span>Primary</span> -->
				<h2>Add Staff Details</h2>
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
							<label for="staffName">Staff Name</label> <input type="text"
								class="form-control" name="staffName"
								placeholder="Enter Staff Name">
						</div>
						<div class="form-group col-md-6">
							<label for="staffEmail">Staff Email</label> <input type="email"
								class="form-control" name="staffEmail"
								placeholder="Enter Staff Email">
						</div>
						<div class="form-group col-md-6">
							<label for="phoneNumber">Phone Number</label> <input type="tel"
								class="form-control" name="staffPhoneNumber"
								placeholder="Enter Phone Number">
						</div>
						<div class="form-group col-md-6">
							<label for="staffGender">Gender</label> <select
								class="form-control" name="staffGender">
								<option>Select your Gender</option>
								<option value="Male">Male</option>
								<option value="Female">Female</option>
							</select>
						</div>
						<div class="form-group col-md-6">
							<label for="roleId">Role ID</label> <input class="form-control"
								name="roleId" placeholder="Enter Id">
						</div>
						<div class="form-group col-md-6">
							<label for="departmentId">Department ID</label> <input
								class="form-control" name="departmentId"
								placeholder="Enter the Department Id">
						</div>
						<div class="form-group col-md-6">
							<label for="subjectId">Subject ID</label> <input
								class="form-control" name="subjectId"
								placeholder="Enter your Subject ID" />
						</div>
					</div>
	
					<input type="submit" class="btn custom-btn mt-4" />
				</form>
			</div>
		</div>
	</div>
</body>
</html>