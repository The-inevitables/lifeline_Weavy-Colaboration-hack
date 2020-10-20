<?php
$message="";
if(count($_POST)>0) {
	$conn = mysqli_connect("sql303.epizy.com","epiz_26880224","2q7Yz29kIdFA","epiz_26880224_hospital");
	$result = mysqli_query($conn,"SELECT * FROM users WHERE user_id='" . $_POST["userID"] . "' and password = '". $_POST["password"]."'");
	$count  = mysqli_num_rows($result);

	if($count==0) {
		$message = "Invalid Username or Password!";
		echo "Invalid Username or Password!";
		
	} else {
		$message = "You are successfully authenticated!";
		header('location: sample/doctor.php');
	}
	
}
?>