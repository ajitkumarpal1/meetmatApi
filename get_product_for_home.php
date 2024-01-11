<?php
    include 'common.php';

    $userID = $_REQUEST['userID'];
    $follow=array();
    $search=array();
    $pp=array();
    $query = "SELECT followeID FROM `followe` WHERE userID ='$userID' order by followeID";   
    $rows = $cn->query($query);
    while ($row = $rows->fetch_assoc()) {

      $follow[] = $row['followeID'];
    }


    $query = "SELECT `sr_no`, `userID`, `search_string` FROM `search_history` WHERE userID ='$userID' ORDER BY sr_no DESC"; 
    $rows = $cn->query($query);
    while ($row = $rows->fetch_assoc()) {

      $search[] = $row['search_string'];
    }
    $productstring="";
    for ($i=0; $i < count($search); $i++) { 
      $productstring=$productstring."product_details LIKE '%$search[$i]%' OR ";
    }
    
    $productstring = substr($productstring,0,-4);

    $userstring="";
    for ($i=0; $i < count($follow); $i++) { 
      $userstring=$userstring."userID=$follow[$i] OR ";
    }

    $userstring = substr($userstring,0,-4);
    if ($userstring=="") 
    {
        $userstring=1;
    } 
    if ($productstring=="") 
    {
        $productstring=1;
    }


       $query = "SELECT * FROM `product` WHERE $productstring OR $userstring ORDER BY RAND() LIMIT 20";
        $result = $cn->query($query);

      while ($row = $result->fetch_assoc()) 
      {
          $pp[] = $row;
      }
        echo  json_encode($pp);
?>