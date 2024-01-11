<?php
    include 'common.php';

    $group_id  = $_REQUEST['group_id'];
    $pp=array();
   
        $query = "SELECT `sr_no`, `group_id`, `member_id`, `type`, `comment`, `date_time` FROM `chat` WHERE  group_id = '$group_id'";
     
        $result = $cn->query($query);
       

      if($row = $result->fetch_assoc()) 
      {
          $pp[] = $row;
        
      }
        echo  json_encode($pp); 
?>