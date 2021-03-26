<!DOCTYPE html>
<html>
<head>
	<title>Student Dashboard</title>
	<link rel="stylesheet" type="text/css" href="bootstrap-4.4.1/css/bootstrap.min.css">
  	<script type="text/javascript" src="bootstrap-4.4.1/js/juqery_latest.js"></script>
  	<script type="text/javascript" src="bootstrap-4.4.1/js/bootstrap.min.js"></script>
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<style type="text/css">
		#header{
			height: 10%;
			width: 100%;
			top: 2%;
			background-color: black;
			position: fixed;
			color: white;
		}
		#left_side{
			height: 75%;
			width: 15%;
			top: 10%;
			position: fixed;
		}
		#right_side{
			height: 75%;
			width: 80%;
			background-color: Salmon;
			position: fixed;
			left: 17%;
			top: 21%;
			color:Navy;
			border: solid 1px black;
		}
		#top_span{
			top: 15%;
			width: 80%;
			left: 17%;
			position: fixed;
		}
	</style>
	<?php
		session_start();
		$connection = mysqli_connect("localhost","root","");
		$db = mysqli_select_db($connection,"sms");
	?>
</head>
<body style="background: SteelBlue "> 
	<div id="header"><br>
		<center>STUDENT INFORMATION MANAGEMENT SYSTEM &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email:&nbsp;&nbsp; <?php echo $_SESSION['email'];?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name:&nbsp;&nbsp;<?php echo $_SESSION['name'];?> &nbsp;&nbsp;&nbsp;&nbsp;
		<a href="logout.php">Logout</a>
		</center>
	</div>

	<div id="left_side">
		<br><br><br>
		<form action="" method="post">
		
			<table>
				<tr>
					<td>
						<input type="submit" class="btn btn-warning" name="show_detail" value="Show Detail">
					</td>
				</tr>
			</table>
		</form>
	</div>
	<div id="right_side"><br><br>
		<div id="demo">
			<?php
			if(isset($_POST['show_detail']))
			{
				$query = "select * from students where email = '$_SESSION[email]'";
				$query_run = mysqli_query($connection,$query);
				while ($row = mysqli_fetch_assoc($query_run)) 
				{
			?>
				<table>
					<tr>
						<td>
							<b>Roll No:</b>
						</td> 
						<td>
							<input type="text" value="<?php echo $row['roll_no']?>" disabled>
						</td>
					</tr>
					<tr>
						<td>
							<b>Name:</b>
						</td> 
						<td>
							<input type="text" value="<?php echo $row['name']?>" disabled>
						</td>
					</tr>
					<tr>
						<td>
							<b>Father's Name:</b>
						</td> 
						<td>
							<input type="text" value="<?php echo $row['father_name']?>" disabled>
						</td>
					</tr>
					<tr>
						<td>
							<b>Class:</b>
						</td> 
						<td>
							<input type="text" value="<?php echo $row['class']?>" disabled>
						</td>
					</tr>
					<tr>
						<td>
							<b>Mobile:</b>
						</td> 
						<td>
							<input type="text" value="<?php echo $row['mobile']?>" disabled>
						</td>
					</tr>
					<tr>
						<td>
							<b>Email:</b>
						</td> 
						<td>
							<input type="text" value="<?php echo $row['email']?>" disabled>
						</td>
					</tr>
					<tr>
						<td>
							<b>Password:</b>
						</td> 
						<td>
							<input type="password" value="<?php echo $row['password']?>" disabled>
						</td>
					</tr>
					<tr>
						<td>
							<b>Remark Given By Teacher :</b>
						</td> 
						<td>
							<textarea rows="3" cols="40" disabled><?php echo $row['remark']?></textarea>
						</td>
					</tr>
				</table>
				<?php
				}	
			}
			?>
		</div>
	</div>
</body>
</html>