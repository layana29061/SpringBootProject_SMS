<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%-- <head>
<meta charset="ISO-8859-1">
<title>Staff Dashboard</title>
</head>
<body>
	<h1>Staff Details</h1>
	<p>Staff ID: ${staff.staffId}</p>
	<p>Name: ${staff.staffName}</p>
	<p>Email: ${staff.staffEmail}</p>
	<p>Phone Number: ${staff.staffPhoneNumber}</p>
	<p>Gender: ${staff.staffGender}</p>
	<a href="updateEmail/${staff.staffId}">Update Email</a>
	<a href="updatePhoneNumber/${staff.staffId}">Update Phone Number</a>
</body>
</html> --%>
<head>
<meta charset="ISO-8859-1">
<title>Staff Dashboard</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="/css/adminDashboard.css" rel="stylesheet">
<style>
.custom-btn {
	background-color: black;
	color: white;
}
</style>
</head>
<body>
	<!-- 	-----------------------------------dashboard header---------------------------- -->
	<div class="main--content">
		<div class="header--wrapper">
			<div class="header--title">
				<!-- <span>Primary</span> -->
				<h2>Dashboard</h2>
			</div>
			<div class="user--info">
				<div class="date--box">
					<a href="updateEmail/${staff.staffId}" class="btn custom-btn">Update Email</a>
				</div>
				<div class="date--box">
					<a href="updatePhoneNumber/${staff.staffId}" class="btn custom-btn">Update Phone</a>
				</div>
				<div class="date--box">
					<i class="fa-solid fa-calendar"></i> <input type="date"
						id="datePicker" />
				</div>
			</div>
		</div>
		<div></div>
		<!-- ------------------profile ------------------------- -->
		<div class="profile--wrapper">
			<div class="row">
				<img src="/images/username.jpg" alt="Staff Management Image"
					class="profile-img img-fluid">
			</div>
			<div class="row">
				<div class="text-center">
					<h3>Profile</h3>
					<div class="table-wrapper">
						<div class="col-1"></div>
						<div class="col-10">
							<table
								class="table table-condensed table-responsive table-user-information">
								<tbody>
									<tr>
										<td>Name:</td>
										<td>${staff.staffName}</td>
									</tr>
									<tr>
										<td>Email:</td>
										<td>${staff.staffEmail}</td>
									</tr>
									<tr>
										<td>Phone:</td>
										<td>${staff.staffPhoneNumber}</td>
									</tr>
									<tr>
										<td>Gender:</td>
										<td>${staff.staffGender}</td>
									</tr>
									<tr>
										<td>Role:</td>
										<td>Staff</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="col-1"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
	<script>
		document.getElementById('datePicker').valueAsDate = new Date();
	</script>
</body>
</html>