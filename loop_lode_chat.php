<?php
    include 'common.php';

    $group_id  = $_REQUEST['group_id'];
    $sr_no = $_REQUEST['sr_no'];
    $pp=array();
   while ( empty($pp)) {
     
        $query = "SELECT `sr_no`, `group_id`, `member_id`, `type`, `comment`, `date_time` FROM `chat` WHERE  group_id = '$group_id' AND sr_no>'$sr_no'";
        $result = $cn->query($query);
       

      if($row = $result->fetch_assoc()) 
      {
          $pp[] = $row;
        
      }
   }
        echo  json_encode($pp); 
?>