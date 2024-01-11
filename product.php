<?php
	include 'common.php';
	
	//$product_pic= $_REQUEST["product_pic"];
	$product_name = $_REQUEST["product_name"];
	$product_details= $_REQUEST["product_details"];
	$mrp= $_REQUEST["mrp"];
  $quantity= $_REQUEST["quantity"];
  $userID= $_REQUEST["userID"];
	$nop=$_REQUEST["nop"];
  $retail_price=$_REQUEST["retail_price"];
  $strin="";
  for($i=0;$i<$nop;$i++)
  {
    if(!empty($_FILES['product_pic'.$i]))
    {
      
      $ext = pathinfo($_FILES['product_pic'.$i]['name'],PATHINFO_EXTENSION);
           $tamp=$i.time().'.'.$ext;
           $strin=$strin.$tamp.",";
            if(move_uploaded_file($_FILES["product_pic".$i]["tmp_name"], 'pics/'.$tamp))
            {
            }
    }
    else
    {
      $strin=$strin."null";
    }
  }

   //if(!empty($_FILES['product_pic']))
   //{
     //$ext = pathinfo($_FILES['product_pic']['name'],PATHINFO_EXTENSION);
           //$product_pic= time().'.'.$ext;
             //move_uploaded_file($_FILES["product_pic"]["tmp_name"], 'pics/'.$product_pic);


   $query = "INSERT INTO `product`(`userID`,`product_pic`, `product_name`, `product_details`, `mrp`, `quantity`,`nop`,`retail_price`) VALUES ('$userID','$strin', '$product_name', '$product_details', '$mrp' ,'$quantity','$nop','$retail_price')"; 
   
   if($cn->query($query))
    {
        $pp  = $cn->insert_id;
        
        $id=$cn->insert_id;

          #start notification code

            $query = "SELECT * FROM `followe` WHERE followeID='$userID'";  
            $rows = $cn->query($query);
            
            
            while ($row = $rows->fetch_assoc()) {
                
                $foll[] = $row['userID'];
            
            }
            if(!empty($foll))
            {
            for ($i=0; $i <count($foll); $i++) { 
              $query = "INSERT INTO `notification`(`productID`, `user`) VALUES ($pp,$foll[$i])";  
              $cn->query($query);
            }
            }
          #end notification code
        echo  json_encode($pp);
    }
    else
    {   
        $pp  = $cn -> error; 
        echo  json_encode($pp);
    }
   //}

    
     
?>
