<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Student</title>

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
    border-radius:10px;
    box-shadow:0 0 10px rgba(0,0,0,.2);
}

.card-header{
    background:#0d6efd;
    color:white;
    font-size:22px;
    text-align:center;
    font-weight:bold;
}

.footer{
    margin-top:30px;
    background:#212529;
    color:white;
    padding:15px;
    text-align:center;
}

.btn{
    width:120px;
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

<div class="row justify-content-center">

<div class="col-md-8">

<div class="card">

<div class="card-header">

Edit Student

</div>

<div class="card-body">

<form action="updateStudent" method="post">

<div class="row">

<div class="col-md-6 mb-3">

<label>ID</label>

<input
type="text"
name="id"
class="form-control"
value="${student.id}"
readonly>

</div>

<div class="col-md-6 mb-3">

<label>Name</label>

<input
type="text"
name="name"
class="form-control"
value="${student.name}"
required>

</div>

</div>

<div class="row">

<div class="col-md-6 mb-3">

<label>Email</label>

<input
type="email"
name="email"
class="form-control"
value="${student.email}"
required>

</div>

<div class="col-md-6 mb-3">

<label>Phone</label>

<input
type="text"
name="phone"
class="form-control"
value="${student.phone}"
required>

</div>

</div>
<div class="mb-3">
    <label class="form-label">Age</label>
    <input type="number"
           class="form-control"
           name="age"
           value="${student.age}"
           required>
</div>

<div class="row">

<div class="col-md-6 mb-3">

<label>Gender</label>

<select
name="gender"
class="form-select">

<option ${student.gender=='Male'?'selected':''}>Male</option>

<option ${student.gender=='Female'?'selected':''}>Female</option>

</select>

</div>

<div class="col-md-6 mb-3">

<label>Department</label>

<input
type="text"
name="department"
class="form-control"
value="${student.department}">

</div>

</div>

<div class="row">

<div class="col-md-6 mb-3">

<label>Course</label>

<input
type="text"
name="course"
class="form-control"
value="${student.course}">

</div>

<div class="col-md-6 mb-3">

<label>Address</label>

<textarea
name="address"
class="form-control"
rows="3">${student.address}</textarea>

</div>

</div>

<div class="text-center">

<button
type="submit"
class="btn btn-success">

Update

</button>

<a
href="view"
class="btn btn-secondary">

Cancel

</a>

</div>

</form>

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