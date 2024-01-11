<?php
	
    include 'common.php';
    $full_name = $_POST['full_name'];
    $profil_type = $_POST["profil_type"];
    $comp_name= $_POST["comp_name"];
	$email= $_POST["email"];
    $contact_no= $_POST["contact_no"];
	$latitude= $_POST["latitude"];
	$longitude= $_POST["longitude"];
	$country= $_POST["country"];
	$state=$_POST["state"]; 
  	$city=$_POST["city"];
  	$addres=$_POST["addres"];
  	$pic_cod=$_POST["pic_cod"];
  	$landmark=$_POST["landmark"];
    $field=$_POST["field"];
    $interest=$_POST["interest"];
    $pic=$_POST["pic"];
    $gender=$_POST["gender"];
    $userID=$_POST["userID"];

if(!empty($_FILES['profil_pic'])){
    
     
     $ext = pathinfo($_FILES['profil_pic']['name'],PATHINFO_EXTENSION);
           $profil_pic= time().'.'.$ext;
             move_uploaded_file($_FILES["profil_pic"]["tmp_name"], 'pics/'.$profil_pic);
             $profil_pic="http://localhost/reachbisiness/pics/{$profil_pic}";
             // echo $image." successfully uploaded";
             //$profil_pic="pics/"+$profil_pic;
            $query = "UPDATE users SET `full_name`='$full_name',`profil_type`='$profil_type',`comp_name`='$comp_name',`email`='$email',`contact_no`='$contact_no',`latitude`='$latitude',`longitude`='$longitude',`country`='$country',`state`='$state',`city`='$city',`addres`='$addres',`pic_cod`='$pic_cod',`landmark`='$landmark',`profil_pic`='$profil_pic',`field`='$field',`interest`='$interest',`gender`='$gender' WHERE userID='$userID'";

    
   if($cn->query($query))
    {
      if(unlink("pics/{$pic}"))
      {
        $pp  = array("status" => "success");
      }
      else
      {
        $pp = array("status" => "success but ");
      }
    }
    else
    { 
        $pp  = $cn -> error;
    }
    
    echo  json_encode($pp);
 
 }
 else
 {
  $query = "UPDATE users SET `full_name`='$full_name',`profil_type`='$profil_type',`comp_name`='$comp_name',`email`='$email',`contact_no`='$contact_no',`latitude`='$latitude',`longitude`='$longitude',`country`='$country',`state`='$state',`city`='$city',`addres`='$addres',`pic_cod`='$pic_cod',`landmark`='$landmark',`field`='$field',`interest`='$interest',`gender`='$gender' WHERE userID='$userID'";
   if($cn->query($query))
    {
        $pp = array("status" => "success ");
    }
    else
    { 
        $pp  = $cn -> error;
    }
    
    echo  json_encode($pp);
 }



?>
