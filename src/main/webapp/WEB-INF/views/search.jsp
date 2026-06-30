<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Student</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{
background:#f5f7fa;
font-family:Arial,sans-serif;
}

.navbar{
background:#0d6efd;
}

.card{
margin-top:30px;
box-shadow:0 0 10px rgba(0,0,0,.2);
border-radius:10px;
}

.card-header{
background:#0d6efd;
color:white;
font-size:22px;
font-weight:bold;
}

.table th{
background:#0d6efd;
color:white;
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
View Students
</a>

</div>

</div>

</nav>

<div class="container">

<div class="card">

<div class="card-header">

Search Student

</div>

<div class="card-body">

<form action="searchStudent" method="get">

<div class="row">

<div class="col-md-10">

<input
type="text"
name="keyword"
class="form-control"
placeholder="Enter ID, Name, Email or Course"
required>

</div>

<div class="col-md-2">

<button
class="btn btn-primary w-100">

Search

</button>

</div>

</div>

</form>

<hr>

<table class="table table-bordered table-hover">

<thead>

<tr>

<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Phone</th>
<th>Department</th>
<th>Course</th>
<th>Action</th>

</tr>

</thead>

<tbody>

<c:forEach var="student" items="${students}">

<tr>

<td>${student.id}</td>
<td>${student.name}</td>
<td>${student.email}</td>
<td>${student.phone}</td>
<td>${student.department}</td>
<td>${student.course}</td>

<td>

<a
href="edit?id=${student.id}"
class="btn btn-warning btn-sm">

Edit

</a>

<a
href="delete?id=${student.id}"
class="btn btn-danger btn-sm"
onclick="return confirm('Delete Student?')">

Delete

</a>

</td>

</tr>

</c:forEach>

</tbody>

</table>

<div class="text-center">

<a href="view" class="btn btn-success">

View All Students

</a>

</div>

</div>

</div>

</div>

<div class="footer">

© 2026 Student Management System

</div>

</body>
</html>