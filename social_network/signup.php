<!DOCTYPE html>
<html>
<head>
	<title>Signup</title>
	<meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<style>
	body{
		overflow-x: hidden;
	}
	.main-content{
		width: 50%;
		height: 40%;
		margin: 10px auto;
		background-color: #fff;
		border:2px solid #e6e6e6;
		padding: 40px 50px;
	}
	.header{
		border: 0px solid #000 ;
		margin-bottom: 5px;
	}
	.well{
		background-color: #187FAB;
	}
	#signup{
		width: 60%;
		border-radius: 30px;
	}
</style>
<body>

	<div class="row">
		<div class="col-sm-12">
			<div class="well">
				<center><h1 style="color: white;">K2.com</h1></center>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12">
			<div class="main-content">
				<div class="header">
					<h3 style="text-align: center;"><strong>Join K2.com</strong></h3><hr>
				</div>
				<div class="l-part">
					<form action="" method="post">
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
							<input type="text" class="form-control" name="first_name" placeholder="First Name" required="required">
						</div><br>
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
							<input type="text" class="form-control" name="last_name" placeholder="Last Name" required="required">

						</div><br>
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
							<input id="password" type="password" class="form-control" name="u_pass" placeholder="password" required="required">
						</div><br>
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
							<input id="email" type="emil" class="form-control" name="u_email" placeholder="Email" required="required">
						</div><br>
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-chevron-down"></i></span>
							<select class="form-control" name="u_country" required="required">
								<option disabled="">Select a country</option>
								<option>Afganisthan</option>
								<option>Bangladesh</option>
								<option>Canada</option>
								<option>Denmark</option>
								<option>Egypt</option>
								<option>Finland</option>
								<option>Germany</option>
								<option>Hong Kong</option>
								<option>India</option>
								<option>Japan</option>
								<option>Korea</option>
								<option>Lous</option>
							</select>
						</div><br>
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-chevron-down"></i></span>
							<select class="form-control input-md" name="u_gender" required="required">
								<option disabled="">Select your gender</option>
								<option>Male</option>
								<option>Female</option>
								<option>Others</option>
							</select>
						</div><br>
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
							<input type="date" class="form-control" placeholder="Date of birth" name="u_birthday" required="required">
						</div><br>
						<a style="text-decoration: none; float: right; color: #187FAB;" data-toggle="tooltip" title="Signin" href="signin.php">Already have an account? Click Here </a><br><br>
						<center><button id="signup" class="btn btn-info btn-lg" name ="signup">Sign up</button></center>
								
								<?php include("insert_user.php"); ?>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>