
<?php
	include 'common.php';
	
	//$to_rating_id= $_REQUEST["to_rating_id"];
	$from_rating_id = $_REQUEST["from_rating_id"];
	$rating= $_REQUEST["rating"];
	$comment= $_REQUEST["comment"];
	$productID= $_REQUEST["productID"];
	

   $query = "INSERT INTO `productrating`( `from_rating_id`, `rating`, `comment`, `productID`) VALUES ('$from_rating_id','$rating','$comment','$productID')"; 
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
