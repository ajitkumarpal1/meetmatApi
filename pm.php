<?php
	include 'common.php';
	
	$pm= $_REQUEST["pm"];
	$get_id = $_REQUEST["get_id"];
	$send_id= $_REQUEST["send_id"];
	

   $query = "INSERT INTO `personal_message`(`pm`,`get_id`,`send_id`) VALUES ('$pm','$get_id','$send_id')"; 
   if($cn->query($query))
    {
        $pp  = $cn->insert_id;
    }
    else
    {
    	$pp  = $cn -> error;
    }
    echo  json_encode($pp);
?>
