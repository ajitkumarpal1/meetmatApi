<?php
    include 'common.php';

    $userID  = $_REQUEST['userID'];
    $pp=array();
    $noti=array();
   
        $query = "SELECT DISTINCT get_id,send_id FROM `personal_message` WHERE get_id='$userID' OR send_id='$userID' ORDER BY time DESC";
        
        $result = $cn->query($query);
       

      while ($row = $result->fetch_assoc()) {
      
      $pp[] = $row;
      }
      for ($i=0; $i <count($pp) ; $i++) { 
        $t_get_id=$pp[$i]['get_id'];
        $t_send_id=$pp[$i]['send_id'];
        $query = "SELECT * FROM `personal_message` WHERE get_id='$t_get_id' AND send_id='$t_send_id' ORDER BY time DESC";
        $result = $cn->query($query);
        if($row = $result->fetch_assoc()) {
        $noti[] = $row;
        }
      }
      
 
  echo json_encode($noti); 
?>