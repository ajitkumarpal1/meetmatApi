<?php
    include 'common.php';
    
    $group_id = $_REQUEST["group_id"];
    $member_id= $_REQUEST["member_id"];
    $type= $_REQUEST["type"];


    if($type!='string')
    {
      
      $ext = pathinfo($_FILES['file']['name'],PATHINFO_EXTENSION);
           $comment= time().'.'.$ext;
            move_uploaded_file($_FILES["file"]["tmp_name"], 'pics/'.$comment);
    }
            
    else
    {
        $comment= $_REQUEST["comment"];
    }

   $query = "INSERT INTO `chat`( `group_id`, `member_id`, `type`, `comment`) VALUES ('$group_id', '$member_id', '$type', '$comment')"; 

   
   if($cn->query($query))
    {
        $pp  = "success";
        echo  json_encode($pp);    
    }
    else
    {   
        $pp  = $cn -> error; 
        echo  json_encode($pp);   
    }
?>
