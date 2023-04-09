<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Home Page</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"></div>
			<!-- Form Design start -->

			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

				<form action="saveuser" method="post"
					style="background-color: rgba(240, 240, 240, 0.35); border-radius: 10px; border: 2px solid rgb(19, 18, 18); padding: 30px; margin-top: 100px;">
					<input type="hidden" name="id" value="${user.id }" />
					<h3 style="text-align: center;">Update Details</h3>
					<hr>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="username">Username</label> <input type="text"
								class="form-control" name="username" id="username"
								value="${user.username }" />
						</div>
						<div class="form-group col-md-6">
							<label for="firstname">Firstname</label> <input type="text"
								class="form-control" name="firstname" id="firstname"
								value="${user.firstname }" />
						</div>
					</div>
					<div class="form-group">
						<label for="lastname">Lastname</label> <input type="text"
							class="form-control" name="lastname" id="lastname"
							value="${user.lastname }" />
					</div>
					<div class="form-group">
						<label for="age">Age</label> <input type="text"
							class="form-control" name="age" id="age" value="${user.age }" />
					</div>
					<div class="form-group">
						<label for="age">Password</label> <input type="text"
							class="form-control" name="password" id="password"
							value="${user.password }" />
					</div>

					<button type="submit" class="btn btn-primary">Update</button>
				</form>
			</div>

			<!-- Form Design End -->
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 "></div>
		</div>
	</div>



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>