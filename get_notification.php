<?php
    include 'common.php';
    $userID = $_REQUEST["userID"];
    $pp=array();
   
    $query = "SELECT `productID`, `user` FROM `notification` WHERE user ='$userID' ORDER BY sr_no DESC";   
    
  
  $rows = $cn->query($query);
  
  while ($row = $rows->fetch_assoc()) {
      
      $pp[] = $row['productID'];
  }
 
  echo json_encode($pp);
?>