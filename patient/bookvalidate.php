<?php
	include('../connection.php');
		session_start();
if(isset($_SESSION['user']))
   {
	$patientid = $_SESSION['user'];
}else
	$patientid = "100";
	$doctorid = $_POST['doctorid'];
$date=$_POST['date'];
$time=$_POST['time'];


$qryy="select * from doctor where DoctorID='$doctorid'";
$qq=mysqli_query($conn,$qryy);
$sqll=mysqli_fetch_array($qq);
$doctorname=$sqll['Doctorname'];
$qryyy="select * from patients where UserID='$patientid'";
$qq1=mysqli_query($conn,$qryyy);
$sqll1=mysqli_fetch_array($qq1);
$patientname=$sqll1['Name'];

	$qry = "select * from appointment where doctorid='$doctorid' AND patientid='$patientid' AND status not in ('completed','cancelled')";
	$sql =mysqli_query($conn,$qry);
	$row = mysqli_num_rows($sql);
	if($row==0)
	{
		
		//redirect("Logged In Successfully","home.php");
		$qry1 = "INSERT INTO `appointment` ( `doctorid`,`doctorname`,`patientid`, `patientname`, `date`, `time`,`status`) VALUES ( '$doctorid','$doctorname','$patientid', '$patientname', '$date', '$time','pending');";
	$sql1 =mysqli_query($conn,$qry1);
		if(!$sql1)
		{
			$message = "Failure";
		$_SESSION['message']="$message";
		header('Refresh:0; URL=bookresult.php');
		exit(0);
		}
		else
		{
			$message = "Appointment Submitted Successfully";
		
		$_SESSION['message']="$message";
		header('Refresh:0; URL=bookresult.php');
		exit(0);
			
		}
	}
	else{
		
		$message = "Appointment Already Exist";
		
		$_SESSION['message']="$message";
		header('Refresh:0; URL=bookresult.php');
		exit(0);
		
	}
	?>