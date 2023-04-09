<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">


<!-- CDN FOR SWEET ALERT  -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<title>Login Form</title>
</head>
<body
	background="https://assets-global.website-files.com/5e39e095596498a8b9624af1/5fdcabfbe1fbb07ad27b11ac_New-Nested-symbols.jpg">

	<div class="container-fluid" id='container'>
		<div class="row">
			<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12"></div>
			<!-- Form Design start -->

			<div class="col-lg-6 col-md-4 col-sm-4 col-xs-12">

				<!-- method is post because data should be hidden  -->
				<form action="loginStudent" 
					style="background-color: rgba(240, 241, 240, 0.3); border: 2px solid black; border-radius: 10px; margin-top: 40px; padding-left: 50px; padding-right: 50px; padding-bottom: 30px">
					<!-- style="background-color: rgb(240, 240, 177); border:1px solid rgb(19, 18, 18); padding: 30px; margin-top:60px;" > -->

					<div class="form-group">

						<br> <label><strong>First Name: </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text"
							name="firstname" placeholder="First Name" required> </label> <br>
						<br> <label><strong>Password: </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
							type="password" name="password" placeholder="Enter Password">
						</label> <br> <br>

						<hr
							style="height: 3px; border-width: 0; color: black; background-color: black;">

						<button class="btn btn-warning" type="submit"
							style="text-align: center;">SIGNUP</button>

					</div>
				</form>

			</div>

			<!-- Form Design End -->
			<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 "></div>


			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
				crossorigin="anonymous"></script>
</body>
</html>