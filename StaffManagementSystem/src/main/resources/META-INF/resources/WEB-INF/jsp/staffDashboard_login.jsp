<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- </head>
<body> <form action="/staffDashboard" method="post">
        <label for="staffId">Staff ID</label>
        <input type="number" id="staffId" name="staffId" placeholder="Enter Staff ID">
        <button type="submit">Submit</button>
    </form>
   
</body>
</html> -->
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
<style>
body {
	display: flex;
	min-height: 100vh; /* Add this line */
}

.custom-btn {
	background-color: black;
	color: white;
}

.content {
	margin-left: 40%;
}

.content input {
	width: 250px;
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
		</div>
		<div></div>
		<!-- ------------------profile ------------------------- -->
		<div class="profile--wrapper">
			<div class="row">
				<img src="/images/username.jpg" alt="Staff Management Image"
					class="profile-img img-fluid">
			</div>
			<div class="row">
				<div class="content">
					<form action="/staffDashboard" method="post">
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="staffId">Staff ID</label> <input type="number"
									id="staffId" name="staffId" class="form-control " placeholder="Enter Staff ID">
							</div>
						</div>
						<input type="submit" class="btn custom-btn mt-4" />
					</form>
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