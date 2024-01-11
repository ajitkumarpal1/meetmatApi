<?php

    include 'common.php';
    $country=$_REQUEST["country"]; 
    $query1 = "SELECT state FROM place WHERE country='$country'";
   
  $rows1 = $cn->query($query1);
  
  while ($row = $rows1->fetch_assoc()) {  
      $pp[] = $row['state'];
   
  }
  
    echo json_encode($pp);
?>