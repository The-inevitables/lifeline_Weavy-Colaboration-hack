<?php
$servername = "sql303.epizy.com";
$username = "epiz_26880224";
$password = "2q7Yz29kIdFA";
$dbname = "epiz_26880224_hospital";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$name =  $_POST['name'];
$email =  $_POST['email']; 
$day =  $_POST['day'];
$department =  $_POST['dept'];
$doctor_name =  $_POST['dname'];
$message =  $_POST['msg'];

$sql = "INSERT INTO `appoinment` (`id`, `name`, `email`, `day`, `department`, `doctor_name`, `message`)
VALUES (NULL, '$name','$email','$day','$department','$doctor_name','$message')";


if ($conn->query($sql) === TRUE) {
    $last_id = $conn->insert_id;
    header('location: booking.php');
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
