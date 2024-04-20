<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
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
				<h2>Dashboard</h2>
			</div>
			<div class="user--info">
				<div class="search--box">
					<i class="fa-solid fa-search"></i> <input type="text"
						placeholder="search" />
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
										<td>Layana</td>
									</tr>
									<tr>
										<td>Email:</td>
										<td>layanae2001@gmail.com</td>
									</tr>
									<tr>
										<td>Phone:</td>
										<td>9061646178</td>
									</tr>
									<tr>
										<td>Role:</td>
										<td>Administrator</td>
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