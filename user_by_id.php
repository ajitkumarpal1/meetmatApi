<?php
    include 'common.php';

    $userID = $_REQUEST["userID"];
    $query1 = "SELECT  *  FROM users WHERE userID= '$userID'";   
    $rows1 = $cn->query($query1);
    $row = $rows1->fetch_object();
    
    $arr=array();
    
    if(empty($row))
    {
        echo  json_encode($arr);
    }
    else
    {
        $arr[]=$row;
        echo json_encode($arr);
    } 
?>