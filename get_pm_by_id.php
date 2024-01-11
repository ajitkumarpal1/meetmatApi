<?php
    include 'common.php';

    $get_id  = $_REQUEST['get_id'];
    $send_id  = $_REQUEST['send_id'];

    $pp=array();
   
        $query = "SELECT `sr_no`, `pm`, `get_id`, `send_id`, `time`, `stats` FROM `personal_message` WHERE  (get_id = '$get_id' AND send_id='$send_id') OR (get_id = '$send_id' AND send_id='$get_id')";
     
        $result = $cn->query($query);
       

      while($row = $result->fetch_assoc()) 
      {
          $pp[] = $row;
        
      }
        echo  json_encode($pp); 
?>