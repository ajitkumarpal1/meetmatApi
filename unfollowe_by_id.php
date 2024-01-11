<?php
    include 'common.php';
    
    $userID = $_REQUEST["userID"];
    $followeID= $_REQUEST["followeID"];

   $query = "DELETE FROM `followe` WHERE userID='$userID' AND followeID='$followeID'"; 

   
   if($cn->query($query))
    {
        $pp  = "success";
        echo  json_encode($pp);    
    }
?>
