<?php

    include 'common.php';
    $group_id = $_REQUEST["group_id"];
    $query = "SELECT  `member_ids` FROM `group` WHERE group_id='$group_id'";     
    $rows = $cn->query($query);
    //echo $rows1;
    $row = $rows->fetch_object();
    $arr=$row->{'member_ids'};
    $string= $arr;
    $j=0;
    $risalt=array();
    $risalt[$j]="";
    for ($i=0; $i <strlen($string); $i++) 
    { 
        if($string[$i]!=',')
        {
            $risalt[$j]=$risalt[$j].$string[$i];
        }
        else
        {
            $j++;
            if($i!=strlen($string)-1)
            {
                $risalt[$j]="";
            }
        }
    }

     //echo strlen($row['member_ids'][0]);
    if(empty($row))
    {
        echo  json_encode($arr);
    }
    else{
        echo json_encode($risalt);    
    }

?>
