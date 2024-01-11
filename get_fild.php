<?php
    include 'common.php';

    $pp=array();
   
        $query = "SELECT `field_name` FROM `field` ORDER BY `field_name`";
     
        $result = $cn->query($query);
       

      while ($row = $result->fetch_assoc()) 
      {
          $pp[] = $row['field_name'];
        
      }
        echo  json_encode($pp); 
?>