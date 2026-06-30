<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">

<style>

body{
    background:#f4f6f9;
}

.navbar{
    background:#0d6efd;
}

.sidebar{
    width:230px;
    height:100vh;
    position:fixed;
    background:#212529;
    color:white;
}

.sidebar a{
    color:white;
    display:block;
    text-decoration:none;
    padding:15px;
    font-size:18px;
}

.sidebar a:hover{
    background:#0d6efd;
}

.main{
    margin-left:230px;
    padding:30px;
}

.card-box{
    border-radius:15px;
    text-align:center;
    padding:25px;
    color:white;
}

.operation{
    transition:.3s;
}

.operation:hover{
    transform:scale(1.04);
}

table{
    background:white;
}

</style>

</head>

<body>

<!-- Navbar -->

<nav class="navbar navbar-dark">

<div class="container-fluid">

<span class="navbar-brand">

<i class="fa-solid fa-graduation-cap"></i>

Student Management System

</span>

<a href="/" class="btn btn-light">

Logout

</a>

</div>

</nav>


<!-- Sidebar -->

<div class="sidebar">

<h4 class="text-center mt-3">MENU</h4>

<a href="/dashboard">

<i class="fa fa-home"></i>

Dashboard

</a>

<a href="/register">

<i class="fa fa-user-plus"></i>

Register Student

</a>

<a href="/view">

<i class="fa fa-users"></i>

View Students

</a>

<a href="/search">

<i class="fa fa-search"></i>

Search

</a>

<a href="/reports">

<i class="fa fa-file"></i>

Reports

</a>

</div>


<div class="main">

<h2 class="mb-4">

Dashboard

</h2>

<!-- Total Students -->

<div class="row mb-4">

<div class="col-md-4">

<div class="card-box bg-primary">

<i class="fa-solid fa-users fa-3x"></i>

<h2 class="mt-3">

${totalStudents}

</h2>

<h5>Total Students</h5>

</div>

</div>

</div>


<!-- Operations -->

<h4 class="mb-3">

Quick Operations

</h4>

<div class="row g-3">

<div class="col-md-3">

<a href="/register" class="btn btn-primary w-100 operation p-3">

<i class="fa fa-user-plus"></i>

Register Student

</a>

</div>

<div class="col-md-3">

<a href="/view" class="btn btn-success w-100 operation p-3">

<i class="fa fa-users"></i>

View Students

</a>

</div>

<div class="col-md-3">

<a href="/search" class="btn btn-warning w-100 operation p-3">

<i class="fa fa-search"></i>

Search

</a>

</div>

<div class="col-md-3">

<a href="/reports" class="btn btn-danger w-100 operation p-3">

<i class="fa fa-file"></i>

Reports

</a>

</div>

</div>


<hr class="my-5">

<h4>

Recently Added Students

</h4>

<table class="table table-bordered table-hover">

<thead class="table-primary">

<tr>

<th>ID</th>

<th>Name</th>

<th>Department</th>

<th>Course</th>

</tr>

</thead>

<tbody>

<c:forEach items="${students}" var="s" end="4">

<tr>

<td>${s.id}</td>

<td>${s.name}</td>

<td>${s.department}</td>

<td>${s.course}</td>

</tr>

</c:forEach>

</tbody>

</table>

<div class="text-end">

<a href="/view" class="btn btn-outline-primary">

View All Students

</a>

</div>

</div>

</body>

</html>