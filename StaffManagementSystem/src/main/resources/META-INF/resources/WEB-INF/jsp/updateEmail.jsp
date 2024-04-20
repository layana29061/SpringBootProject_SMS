<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<%-- <head>
<meta charset="ISO-8859-1">
<title>Update Email</title>
</head>
<body>
    <form method="post" action="/updateEmail" >
        <input type="hidden" name="staffId" value="${staffId}">
        
        <label for="newEmail">New Email</label>
        <input type="email" id="newEmail" name="newEmail"
         placeholder="Enter new email">
        <button type="submit">Submit</button>
    </form>
</body>
</html>
 --%>
<head>
<meta charset="ISO-8859-1">
<title>Update Email</title>
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
	padding-top: 5%;
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
body {
	display: flex;
	min-height: 100vh; /* Add this line */
}
</style>
</head>
<body>
	<div class="main--content">
		<div class="header--wrapper">
			<div class="header--title">
				<!-- <span>Primary</span> -->
				<h2>Update Email</h2>
			</div>
		</div>
		<div class="row">
			<div class=" col-6 mt-5">
				<img src="/images/add-image.jpg" alt="Staff Management Image"
					class="profile-img img-fluid">
			</div>
			<div class="col-6 ml-4">
				<form method="post" action="/updateEmail">
					<div class="form-row">
						<div class="form-group col-md-6">
							 <input type="hidden" name="staffId" value="${staffId}">
							 
							<label for="newEmail">New Email</label> <input type="email"
								id="newEmail" name="newEmail"  class="form-control"
								placeholder="Enter new email">
						</div>
					</div>
					<input type="submit" class="btn custom-btn mt-4" />
				</form>
			</div>
		</div>
	</div>
</body>
</html>