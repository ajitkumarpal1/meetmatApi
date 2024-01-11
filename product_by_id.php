<?php
    include 'common.php';

    $productID = $_REQUEST["productID"];
    $query1 = "SELECT  *  FROM product WHERE productID= '$productID'";   
    $rows1 = $cn->query($query1);
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