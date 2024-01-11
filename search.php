<?php
    include 'common.php';

    $searchValue = $_REQUEST['search'];
    $time = $_REQUEST['time'];
        $query = "SELECT * FROM `users` WHERE  comp_name OR email OR full_name  LIKE '%$searchValue%%'";
    
        $result = $cn->query($query);
        $i=2*$time;
        $j=1;
        $lat=$time-1;
        $lat=$lat*2;

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