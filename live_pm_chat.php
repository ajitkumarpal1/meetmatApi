<?php
    include 'common.php';

    $get_id  = $_REQUEST['get_id'];
    $send_id = $_REQUEST['send_id'];
    $sr_no = $_REQUEST['sr_no'];
    $pp=array();
   while ( empty($pp)) {
     
        $query = "SELECT * FROM `personal_message` WHERE  get_id='$get_id' AND send_id='$send_id' AND sr_no>'$sr_no'";
        $result = $cn->query($query);
       

      if($row = $result->fetch_assoc()) 
      {
          $pp[] = $row;
        
      }
   }
        echo  json_encode($pp); 
?>