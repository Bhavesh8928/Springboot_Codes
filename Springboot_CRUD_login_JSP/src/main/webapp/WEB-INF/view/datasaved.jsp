<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Data saved successfully</h1>
	<div class="container text-center">
		<h3>New Registration</h3>
		<hr>
		<!-- 				<form class="form-horizontal" method="POST" action="save-user">
 -->
		<form>
			<input type="hidden" name="id" value="${user.id }" />
			<div class="form-group">
				<label class="control-label col-md-3">Username</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="username"
						value="${user.username }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">First Name</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="firstname"
						value="${user.firstname }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Last Name</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="lastname"
						value="${user.lastname }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Age </label>
				<div class="col-md-3">
					<input type="text" class="form-control" name="age"
						value="${user.age }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Password</label>
				<div class="col-md-7">
					<input type="password" class="form-control" name="password"
						value="${user.password }" />
				</div>
			</div>
			<!-- <div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Register" />
					</div> -->
		</form>
	</div>
	<c:choose>
	<c:when test="${mode=='ALL_USERS' }">
		<div class="container text-center" id="tasksDiv">
			<h3>All Users</h3>
			<hr>
			<div class="table-responsive">
				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<th>Id</th>
							<th>UserName</th>
							<th>First Name</th>
							<th>LastName</th>
							<th>Age</th>
							<th>Delete</th>
							<th>Edit</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="user" items="${users }">
							<tr>
								<td>${users.id}</td>
								<td>${users.username}</td>
								<td>${users.firstname}</td>
								<td>${users.lastname}</td>
								<td>${users.age}</td>
								<td><a href="/delete-user?id=${users.id }"><span
										class="glyphicon glyphicon-trash"></span>delete</a></td>
								<td><a href="/edit-user?id=${users.id }"><span
										class="glyphicon glyphicon-pencil"></span>edit</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</c:when>
</c:choose>
</body>
</html>