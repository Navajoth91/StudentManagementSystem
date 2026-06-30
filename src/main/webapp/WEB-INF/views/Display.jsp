<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Details</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{
background:#f4f6f9;
font-family:Arial,sans-serif;
}

.navbar{
background:#0d6efd;
}

.card{
margin-top:40px;
box-shadow:0 0 10px rgba(0,0,0,.2);
border-radius:12px;
}

.card-header{
background:#0d6efd;
color:white;
font-size:22px;
font-weight:bold;
}

.footer{
margin-top:30px;
background:#212529;
color:white;
padding:15px;
text-align:center;
}

</style>

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark">

<div class="container">

<a class="navbar-brand" href="dashboard">
Student Management System
</a>

<div>

<a href="dashboard" class="btn btn-light btn-sm">
Dashboard
</a>

<a href="view" class="btn btn-light btn-sm">
Students
</a>

</div>

</div>

</nav>

<div class="container">

<div class="row justify-content-center">

<div class="col-md-8">

<div class="card">

<div class="card-header">

Student Information

</div>

<div class="card-body">

<table class="table table-bordered">

<tr>
<th width="30%">Student ID</th>
<td>${student.id}</td>
</tr>

<tr>
<th>Name</th>
<td>${student.name}</td>
</tr>

<tr>
<th>Email</th>
<td>${student.email}</td>
</tr>

<tr>
<th>Phone</th>
<td>${student.phone}</td>
</tr>

<tr>
<th>Gender</th>
<td>${student.gender}</td>
</tr>

<tr>
<th>Department</th>
<td>${student.department}</td>
</tr>

<tr>
<th>Course</th>
<td>${student.course}</td>
</tr>

<tr>
<th>Address</th>
<td>${student.address}</td>
</tr>

</table>

<div class="text-center">

<a href="edit?id=${student.id}" class="btn btn-warning">
Edit
</a>

<a href="view" class="btn btn-primary">
Back
</a>

</div>

</div>

</div>

</div>

</div>

</div>

<div class="footer">

© 2026 Student Management System

</div>

</body>
</html>