<%@ page language="java" contentType="text/html;charset=UTF-8"
pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>All Students</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body class="bg-light">

<div class="container">

<h2 class="text-center mt-4">

All Student Records

</h2>

<table class="table table-bordered table-striped mt-4">

<thead class="table-dark">

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

<c:forEach items="${students}" var="s">

<tr>

<td>${s.id}</td>

<td>${s.name}</td>

<td>${s.email}</td>

<td>${s.phone}</td>

<td>${s.department}</td>

<td>${s.course}</td>

<td>

<a href="edit?id=${s.id}"

class="btn btn-warning btn-sm">

Edit

</a>

<a href="delete?id=${s.id}"

class="btn btn-danger btn-sm">

Delete

</a>

</td>

</tr>

</c:forEach>

</tbody>

</table>

<div class="text-center">

<a href="dashboard"

class="btn btn-primary">

Dashboard

</a>

</div>

</div>

</body>

</html>