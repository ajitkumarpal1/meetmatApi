<?php
    include 'common.php';
    
    $creat_id = $_REQUEST["creat_id"];
    $group_name= $_REQUEST["group_name"];
    $admin_ids= $_REQUEST["admin_ids"];
    $member_ids= $_REQUEST["member_ids"];



   $query = "INSERT INTO `group`(`creat_id`,`group_name`,`admin_ids`,`member_ids`) VALUES ('$creat_id','$group_name','$admin_ids','$member_ids')"; 
  # INSERT INTO `group_member`(`sr_no`, `group_id`, `group_member`) VALUES ([value-1],[value-2],[value-3])
   #SELECT `group_id`, `creat_id`, `group_name`, `admin_ids`, `date_time`, `member_ids` FROM `group` WHERE 1

   
   if($cn->query($query))
    {
        $id=$cn->insert_id;
        $pp  = "success";
        #echo  json_encode($pp);

    $j=0;
    $risalt=array();
    $risalt[$j]="";
    for ($i=0; $i <strlen($member_ids) ; $i++) 
    { 
        if($member_ids[$i]!=',')
        {
            if($member_ids[$i]!='\\')
            {
                $risalt[$j]=$risalt[$j].$member_ids[$i];
            }
        }
        else
        {
            $query = "INSERT INTO `group_member`( `group_id`, `group_member`) VALUES ('$id','$risalt[$j]')"; 
            
            $cn->query($query);
            $j++;
            $risalt[$j]="";
        } 
    }
    $query = "INSERT INTO `chat`(`group_id`, `member_id`, `type`, `comment`) VALUES ('$id','$creat_id','string','this group is criated by me')"; 
            
            $cn->query($query);
    echo  json_encode($pp);    
    }
    else
    {   
        $pp  = $cn -> error; 
        echo  json_encode($pp);   
    }
?>
