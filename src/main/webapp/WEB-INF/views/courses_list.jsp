<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Course List</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{
background:#f5f5f5;
font-family:Arial;
}

.navbar{
background:#0d6efd;
}

.card{
transition:.3s;
margin-top:25px;
}

.card:hover{
transform:scale(1.05);
}

.footer{
margin-top:40px;
padding:15px;
background:#212529;
color:white;
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

<a href="register" class="btn btn-light btn-sm">
Register
</a>

</div>

</div>

</nav>

<div class="container">

<h2 class="text-center mt-4 mb-4">

Available Courses

</h2>

<div class="row">

<div class="col-md-4">

<div class="card border-primary">

<div class="card-body">

<h4>Java</h4>

<p>Core Java, OOP, Collections and JDBC.</p>

</div>

</div>

</div>

<div class="col-md-4">

<div class="card border-success">

<div class="card-body">

<h4>Spring Boot</h4>

<p>Spring MVC, REST API, JPA and MySQL.</p>

</div>

</div>

</div>

<div class="col-md-4">

<div class="card border-danger">

<div class="card-body">

<h4>Python</h4>

<p>Python Programming with Data Structures.</p>

</div>

</div>

</div>

</div>

<div class="row mt-3">

<div class="col-md-4">

<div class="card border-warning">

<div class="card-body">

<h4>React</h4>

<p>Frontend Development using React JS.</p>

</div>

</div>

</div>

<div class="col-md-4">

<div class="card border-info">

<div class="card-body">

<h4>SQL</h4>

<p>Database Design and SQL Queries.</p>

</div>

</div>

</div>

<div class="col-md-4">

<div class="card border-dark">

<div class="card-body">

<h4>DSA</h4>

<p>Data Structures and Algorithms using Java.</p>

</div>

</div>

</div>

</div>

<div class="text-center mt-4">

<a href="dashboard" class="btn btn-primary">

Back to Dashboard

</a>

</div>

</div>

<div class="footer">

© 2026 Student Management System

</div>

</body>

</html>