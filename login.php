<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
	<link rel="stylesheet" type="text/css" href="bootstrap-4.4.1/css/bootstrap.min.css">
  	<script type="text/javascript" src="bootstrap-4.4.1/js/juqery_latest.js"></script>
  	<script type="text/javascript" src="bootstrap-4.4.1/js/bootstrap.min.js"></script>
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <style type="text/css">
 	body {
  background-image: url("sms_background.jpg");
    background-size: 100% ;
}
 </style>
</head>
<body>
	<center><br><br>
	<h1>STUDENT INFORMATION MANAGEMENT SYSTEM</h1><br>
	<hr>
	<form action="" method="POST">
		<input type="submit" class="btn btn-outline-dark btn-lg " name="admin_login" value="Admin Login" required>
		<br><br>
		<input type="submit" class="btn btn-outline-dark btn-lg " name="student_login" value="Student Login" required>
	</form>
	<?php
		if(isset($_POST['admin_login'])){
			header("Location: admin_login.php");
		}
		if(isset($_POST['student_login'])){
			header("Location: student_login.php");
		}
	?>
	</center>
</body>
</html>