<%@ page language="java" contentType="text/html;charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Reports</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{
background:#f5f5f5;
}

.card{
margin-top:20px;
box-shadow:0 0 8px lightgray;
}

.navbar{
background:#0d6efd;
}

</style>

</head>

<body>

<nav class="navbar navbar-dark">

<div class="container">

<a class="navbar-brand" href="dashboard">

Student Management

</a>

</div>

</nav>

<div class="container">

<h2 class="text-center mt-4">

Student Reports

</h2>

<div class="row">

<div class="col-md-3">

<div class="card text-center">

<div class="card-body">

<h3>${totalStudents}</h3>

<p>Total Students</p>

</div>

</div>

</div>

<div class="col-md-3">

<div class="card text-center">

<div class="card-body">

<h3>${maleStudents}</h3>

<p>Male Students</p>

</div>

</div>

</div>

<div class="col-md-3">

<div class="card text-center">

<div class="card-body">

<h3>${femaleStudents}</h3>

<p>Female Students</p>

</div>

</div>

</div>

<div class="col-md-3">

<div class="card text-center">

<div class="card-body">

<h3>${totalCourses}</h3>

<p>Courses</p>

</div>

</div>

</div>

</div>

<div class="text-center mt-4">

<a href="dashboard" class="btn btn-primary">

Dashboard

</a>

</div>

</div>

</body>

</html>