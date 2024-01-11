<?php

  include 'common.php';  
  $query1 = "SELECT DISTINCT country FROM place";
   

  $rows1 = $cn->query($query1);
  
  while ($row = $rows1->fetch_assoc()) {  
      $pp[] = $row['country'];
   
  }
  
    echo json_encode($pp);
?>