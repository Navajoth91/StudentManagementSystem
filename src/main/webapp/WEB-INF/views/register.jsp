<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background: #f4f6f9;
	font-family: Arial, sans-serif;
}

.navbar {
	background: #0d6efd;
}

.card {
	margin-top: 30px;
	border-radius: 15px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

.card-header {
	background: #0d6efd;
	color: white;
	font-size: 22px;
	font-weight: bold;
	text-align: center;
}

.btn {
	width: 120px;
}

.footer {
	margin-top: 30px;
	padding: 15px;
	background: #212529;
	color: white;
	text-align: center;
}
</style>

</head>
<body>

	<!-- Navbar -->

	<nav class="navbar navbar-expand-lg navbar-dark">

		<div class="container">

			<a class="navbar-brand" href="dashboard"> Student Management
				System </a>

			<div>

				<a href="dashboard" class="btn btn-light btn-sm">Dashboard</a> <a
					href="view" class="btn btn-light btn-sm">View Students</a>

			</div>

		</div>

	</nav>

	<div class="container">

		<div class="row justify-content-center">

			<div class="col-md-8">

				<div class="card">

					<div class="card-header">Student Registration</div>

					<div class="card-body">

						<form action="saveStudent" method="post">

							<div class="row">

								<div class="col-md-6 mb-3">

									<label class="form-label">Student ID</label> <input
										type="number" name="id" class="form-control" required>

								</div>

								<div class="col-md-6 mb-3">

									<label class="form-label">Student Name</label> <input
										type="text" name="name" class="form-control" required>

								</div>

							</div>

							<div class="row">

								<div class="col-md-6 mb-3">

									<label class="form-label">Email</label> <input type="email"
										name="email" class="form-control" required>

								</div>

								<div class="col-md-6 mb-3">

									<label class="form-label">Phone</label> <input type="text"
										name="phone" class="form-control" required>

								</div>

							</div>

							<div class="col-md-6 mb-3">

    <label class="form-label">Age</label>

    <input type="number"
           name="age"
           class="form-control"
           min="1"
           max="120"
           required>

</div>
							<div class="row">

								<div class="col-md-6 mb-3">

									<label class="form-label">Gender</label> <br>

									<input type="radio" name="gender" value="Male"> Male

									<input type="radio" name="gender" value="Female"
										class="ms-3"> Female

								</div>

								<div class="col-md-6 mb-3">

									<label class="form-label">Department</label> <select
										name="department" class="form-select">

										<option>CSE</option>
										<option>ECE</option>
										<option>EEE</option>
										<option>Mechanical</option>
										<option>Civil</option>

									</select>

								</div>

							</div>

							<div class="row">

								<div class="col-md-6 mb-3">

									<label class="form-label">Course</label> <select
										name="course" class="form-select">

										<option>Java</option>
										<option>Python</option>
										<option>Spring Boot</option>
										<option>React</option>
										<option>SQL</option>

									</select>

								</div>

								<div class="col-md-6 mb-3">

									<label class="form-label">Address</label>

									<textarea class="form-control" rows="3" name="address"></textarea>

								</div>

							</div>

							<div class="text-center mt-4">

								<button type="submit" class="btn btn-success">
									Register
								</button>

								<button type="reset" class="btn btn-danger">
									Reset
								</button>

							</div>

						</form>

					</div>

				</div>

			</div>

		</div>

	</div>

	<div class="footer">

		&copy; 2026 Student Management System

	</div>

</body>
</html>