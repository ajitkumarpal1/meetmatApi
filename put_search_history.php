
<?php
	include 'common.php';
	
	//$to_rating_id= $_REQUEST["to_rating_id"];
	$search = $_REQUEST["search"];
    $userID = $_REQUEST["userID"];
	

   $query = "INSERT INTO `search_history`(`userID`, `search_string`) VALUES ('$userID','$search')"; 
   if($cn->query($query))
    {
        $pp  = "success";
        echo  json_encode($pp);    
    }
    else
    {   
        $pp  = $cn -> error; 
        echo  json_encode($pp);   
    }
?>
