<?php

session_start();

$con = mysqli_connect("localhost", "root", "", "hms");


mysqli_select_db($con,"hms");

$docid= $_POST['doctorid'];
$docname= $_POST['doctorname'];
$docnum=$_POST['docnum'];
$docgender=$_POST['docgender'];
$spec = $_POST['spec'];
$password = $_POST['password'];
$cpassword = $_POST['cpassword'];
$fees = $_POST['fees'];

if($password != $cpassword){
  echo "<script>alert('password is mismatching.... please re-enter your password ');</script>";
  	?>
	<META HTTP-EQUIV="Refresh" CONTENT="0; URL=http://localhost/hms-hospital/adddoctor.html">
	<?php
	
}
else{
$s = "select * from doctable where docid='$docid'";

$result = mysqli_query($con, $s);

$num = mysqli_num_rows($result);

if($num==1)
{
    echo "<script>window.alert('Doctor Id is already taken');</script>";
	?>
	<META HTTP-EQUIV="Refresh" CONTENT="0; URL=http://localhost/hms-hospital/adddoctor.html">
	<?php
	
}
else
{
    $reg="insert into doctable(`docid`,`docname`,`docnum`,`docgender`,`specilaization`,`password`,`confirmpassword`,`consultancyfees`) values ('$docid','$docname','$docnum','$docgender','$spec','$password','$cpassword','$fees')";
    mysqli_query($con,$reg);
    
    echo"<script>window.alert('Details Entered Successfully');</script>"; 
    
	?>
    <META HTTP-EQUIV="Refresh" CONTENT="0; URL=https://localhost/hms-hospital/doctorlist.php">
	<?php
	
}
}
?>