<?php
    include 'common.php';

    $searchValue = $_REQUEST['search'];
    $time = $_REQUEST['time'];
        $query = "SELECT * FROM `product` WHERE  mrp OR product_name  OR product_details LIKE '%$searchValue%'";
       
        $result = $cn->query($query);
        $i=3*$time;
        $j=1;
        $lat=$time-1;
        $lat=($lat*2)+1;

      while ($row = $result->fetch_assoc()) 
      {
        if($i>=$j && $j>$lat)
        {
          $pp[] = $row;
        
	      }
	      if($i==$j)
	      {
	  	    break;
	      }
        $j++;
      }
        echo  json_encode($pp); 
?>