
<?php
	include 'common.php';
	
	$userID= $_REQUEST["userID"];
	$productID= $_REQUEST["productID"];
	
    
        $query = "SELECT * FROM `like_list` WHERE userID='$userID' AND productID='$productID'";
        $result=$cn->query($query);
        $row = $result->fetch_assoc();
    
    if(empty($row))
    {
        echo  json_encode('0');    
    }
    else
    {    
        echo  json_encode('1');   
    }
?>
