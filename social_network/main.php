<!DOCTYPE html>
<html>
<head>
	<title>Login And Sign Up</title>
	<meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<style>
	body{
		overflow-x:hidden;
	}
	#centered1{
		position: absolute;
		font-size: 10px;
		top: 30%;
		left: 30%;
		transform: translate(-50%, -50%);
	}
	#centered2{
		position: absolute;
		font-size: 10px;
		top: 50%;
		left: 38%;
		transform: translate(-50%, -50%);
	}
	#centered3{
		position: absolute;
		font-size: 10px;
		top: 70%;
		left: 30%;
		transform: translate(-50%, -50%);
	}
	#signup{
		width: 60%;
		border-radius: 30px;
		margin-bottom: 5px;
	}
	#login{
		width: 60%;
		background-color: #fff;
		border:1px solid #1da1f2;
		color: #1da1f2;
		border-radius: 30px;
	}
	#login :hover{
		width: 60%;
		background-color: #fff;
		color: #1da1f2;
		border:2px solid #1da1f2;
		border-radius: 30px;
	}
	.well{
		background-color: #187FAB;
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
		<div class="col-sm-6" style="left: 0.5%;" >
			<img src="images/home_img.jpg" class="img-rounded" title="k2it logo" width="655px" height="500px">
			<div id="centered1" class="centered"><h3 style="color: green;"><span class="glyphicon glyphicon-search">&nbsp<strong>Follow Your interests.</strong></span></h3></div>

			<div id="centered2" class="centered"><h3 style="color: green;"><span class="glyphicon glyphicon-search">&nbsp<strong>Hear What People are talking about.</strong></span></h3></div>

			<div id="centered3" class="centered"><h3 style="color: green;"><span class="glyphicon glyphicon-search">&nbsp<strong>Join the Conversation </strong></span></h3></div>
		</div>
		<div class="col-sm-6" style="left: 8px;">
			<img src="images/logo.png" class="img-rounded" title="k2it logo" width="80px" height="80px">
			<h2><strong>See what's happening in <br>the world right now</strong></h2><br>
			<h4><strong>Join K2it Today.</strong></h4>
			<form method="post" action="">
				<button id="signup" class="btn btn-info btn-lg" name="signup">Sign Up</button><br>
				<?php 
					if(isset($_POST['signup'])){
						echo "<script>window.open('signup.php','_self')</script>";
					}
				 ?>
				 <?php 
					if(isset($_POST['login'])){
						echo "<script>window.open('signin.php','_self')</script>";
					}
				 ?>
				<button id="login" class="btn btn-info btn-lg" name="login">Log in</button>
			</form>
			
		</div>
	</div>

</body>
</html>