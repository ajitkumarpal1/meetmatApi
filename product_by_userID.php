<?php
    include 'common.php';

    $userID = $_REQUEST['userID'];
    //$short = $_REQUEST['short'];
    $pp=array();
   
        $query = "SELECT * FROM `product` WHERE userID= '$userID'";
     
        $result = $cn->query($query);
       

      while ($row = $result->fetch_assoc()) 
      {
        $pp[] = $row;
        
      }
         echo json_encode($pp);
?>