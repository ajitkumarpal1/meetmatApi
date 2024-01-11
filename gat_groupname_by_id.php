<?php
    include 'common.php';

    $creat_id  = $_REQUEST['userID'];



    $query = "SELECT * FROM `group_member` WHERE  group_member = '$creat_id'";
     
        $result = $cn->query($query);
       

      while ($row = $result->fetch_assoc()) 
      {
          $pp1[] = $row['group_id'];
      }

$pp=array();
for ($i=0; $i <count($pp1) ; $i++) { 
      $query = "SELECT `group_id`,`group_name`,`creat_id` FROM `group` WHERE  group_id = '$pp1[$i]'";
      $result = $cn->query($query);
      if($row = $result->fetch_assoc()) 
      {
          $pp[] = $row;
        
      }
}
        echo  json_encode($pp); 
?>