<?php
    include 'common.php';

    $mail = $_REQUEST['mail'];
        $query = "SELECT * FROM `users` WHERE email='$mail'";
    
        $rows1 = $cn->query($query);
    $row = $rows1->fetch_object();
    
    $arr=array();
    
    if(empty($row))
    {
        echo  json_encode($arr);
    }
    else
    {
        $arr=$row;
        echo json_encode($arr);
    } 
?>