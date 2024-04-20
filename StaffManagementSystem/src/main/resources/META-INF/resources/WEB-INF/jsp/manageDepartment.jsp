<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Department Details</title>
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
.table, .table td, .table th {
	background-color: transparent;
}

.table-wrapper {
	/* display: flex; */
	table-layout: fixed;
	border-spacing: 30px;
	margin-left: 50px;
}

.custom-btn {
	background-color: black;
	color: white;
}
</style>
</head>
<body>
	<!-- -------------------------------sidebar------------------------------ -->
	<div class="sidebar">
		<div class="logo"></div>
		<ul class="menu">
			<li class="active"><a href='admin'> <i
					class="fas fa-tachometer-alt"></i> <span>Dashboard</span>
			</a></li>
			<li><a href='admin'> <i class="fas fa-user"></i> <span>Profile</span>
			</a></li>
			<li><a href='manageDepartment'> <i
					class="fa-solid fa-building"></i> <span>Department</span>
			</a></li>
			<li><a href='manageSubject'> <i class="fa-solid fa-book"></i> <span>Subject</span>
			</a></li>
			<li><a href='manageRole'> <i class="fa-solid fa-users"></i> <span>Roles</span>
			</a></li>
			<li><a href='manageStaff'> <i
					class="fa-solid fa-person-chalkboard"></i> <span>Staff</span>
			</a></li>
			<li><a href='#'> <i class="fa-solid fa-list"></i> <span>Others</span>
			</a></li>
			<li class="logout"><a href='sms'> <i
					class="fas fa-sign-out-alt"></i> <span>LogOut</span>
			</a></li>
		</ul>
	</div>
	<!-- 	-----------------------------------dashboard header---------------------------- -->
	<div class="main--content">
		<div class="header--wrapper">
			<div class="header--title">
				<!-- <span>Primary</span> -->
				<h2>Department Details</h2>
			</div>
			<div class="date--box">
				<a href="addDepartments" class="btn custom-btn">Add Department Details</a>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<div class="table-wrapper">
					<table
						class="table table-condensed table-responsive table-user-information">
						<thead>
							<tr>
								<th>Department ID</th>
								<th>Department Name</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="department" items="${department}">
								<tr>
									<td>${department.departmentId}</td>
									<td>${department.departmentName}</td>
									<td><a
										href="deleteDepartment?departmentId=${department.departmentId}"
										class="btn btn-warning">DELETE </a></td>
									<td><a
										href="updateDepartment?departmentId=${department.departmentId}"
										class="btn btn-success">UPDATE </a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
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