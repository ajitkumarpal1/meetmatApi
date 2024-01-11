
<?php
	include 'common.php';
	
	$userID= $_REQUEST["userID"];
	$falg = $_REQUEST["flag"];
	$productID= $_REQUEST["productID"];
	
    if($falg=="like")
    {
        $query = "INSERT INTO `like_list`(`userID`,`productID`) VALUES ('$userID','$productID')"; 
    }
    else
    {
        $query = "DELETE FROM `like_list` WHERE userID='$userID' AND productID='$productID'";
    }
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
