<?php
	include 'common.php';
	
	$fullname= $_REQUEST["fullname"];
	$email = $_REQUEST["email"];
	$password= $_REQUEST["password"];
	$cnumber= $_REQUEST["cnumber"];
	

   $query = "INSERT INTO `users`(`full_name`,`email`,`contact_no`,`password`) VALUES ('$fullname','$email','$cnumber','$password')"; 
   if($cn->query($query))
    {
        $pp  = "success";
    }
    else
    {
    	$pp  = $cn -> error;
    }
    echo  json_encode($pp);
?>
