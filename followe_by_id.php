<?php
    include 'common.php';
    
    $userID = $_REQUEST["userID"];
    $followeID= $_REQUEST["followeID"];



   $query = "INSERT INTO `followe`(`userID`, `followeID`) VALUES ('$userID','$followeID')"; 

   
   if($cn->query($query))
    {
        $pp  = "success";
        echo  json_encode($pp);    
    }
?>
