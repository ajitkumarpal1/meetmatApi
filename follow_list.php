<?php
    include 'common.php';
    $userID = $_REQUEST["userID"];
    $pp=array();
   
    $query = "SELECT followeID FROM `followe` WHERE  userID ='$userID' order by followeID";   
    
  
  $rows = $cn->query($query);
  
  while ($row = $rows->fetch_assoc()) {
      
      $pp[] = $row['followeID'];
  }
 
  echo json_encode($pp);
?>