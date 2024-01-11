<?php
    include 'common.php';

    $productID = $_REQUEST['productID'];
    $pp=array();
   
        $query = "SELECT * FROM `productrating` WHERE productID= '$productID'";
     
        $result = $cn->query($query);
       

      while ($row = $result->fetch_assoc()) 
      {
          $pp[] = $row;
        
      }
        echo  json_encode($pp); 
?>