<?php
session_start(); 
$user=$_SESSION['userid'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>We Care</title>

    <!-- Title icon -->
    <link rel="icon" href="assets/images&gif/others/logo.jpg">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&family=Ubuntu:wght@300&display=swap" rel="stylesheet">
    
    <!--Css Stylesheets-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!--FontAwesome-->
    <script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
    
    <!--Bootstrap-->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<style>
	html,body{
	    width:100%;
	    height:100%;
	    padding:0%;
	    margin:0%;
	    overflow-x:hidden;
	}
	    body{
            background-color: #009879;
            margin:0;
	        padding:0;
	        font-family: sans-serif;
        }
		.admin-header1{
			color:#ff568c;
			margin-top:200px;
		}
		.admin-header2{
			margin-top:10px;
			color:#fff;
		}
	</style>
</head>
<body>
	   <!-- Back Navigation -->
	<nav class="navbar navbar-light bg-light">
        <a class="navbar-brand" href="signin.html"><i class="fas fa-backward"></i> Logout</a>
    </nav>

	<!-- Nav Bar -->
	<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#009879;">
		<a class="navbar-brand" href="">WELCOME TO WE CARE <span style="color:#ff568c;font-weight:bold;font-family:sans-serif; font-size:30px;">
	   <?php 
	   
		   echo $user;
		
	    ?> </span></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
		  <span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
		  <ul class="navbar-nav ml-auto">
			<li class="nav-item">
			  <a class="nav-link" href="pat-doclist.php">Doctor List</a>
			</li>
			<li class="nav-item">
			  <a class="nav-link" href="pat-bookappoint.php">Book Appointment</a>
			</li>
			<li class="nav-item">
			  <a class="nav-link" href="pat-appointdetails.php">Appointment Details</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="pat-preslist.php">Prescription list</a>
			</li>
			<?php
            $con = mysqli_connect("localhost", "root", "", "hms");
            mysqli_select_db($con,"hms");
            $query = "SELECT COUNT(*) AS count FROM `prescription` WHERE userid='$user' AND status='0'";
            $query_run= mysqli_query($con,$query);
            			
            while($row=mysqli_fetch_assoc($query_run))
            {
			$output =$row['count'];
			if($row['count']>0)
			{
			?>
			<li>
			<span class="badge bg-warning" style="margin-top:10px;"><?php echo $output?></span>
            </li>
			<?php
			}
			}
			?>
			
		  </ul>
		</div>
	  </nav>


	<div class="welcome-pat">
		<center>
			<h1 class="admin-header1">WELCOME PATIENT</h1>
			<h1 class="admin-header2">WE CARE HOSPITAL WELCOME YOU</h1>
		</center>
    </div>
</body>
</html>