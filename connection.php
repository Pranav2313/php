<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
</head>

<body>
	<?php

$servername = "localhost";

$username = "root";

$password = "";

$dbname = "doctorappointment";

$conn = mysqli_connect(
       $servername,
	   $username,
       $password,
       $dbname);



/*if (!$conn) {
	die("Connection failure ");
}
else
{
	echo("Connection Successfull");
}
*/
?>

</body>
</html>