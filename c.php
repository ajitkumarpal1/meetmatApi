<?php
  $latitude= 21.165822; //latitude
  $longitude= 72.870344; //longitude
  

$address = getAddress($latitude,$longitude);
$address = $address?$address:'Not found';

echo $address;


  function getAddress($latitude,$longitude){
    if(!empty($latitude) && !empty($longitude)){
        //Send request and receive json data by address
        $geocodeFromLatLong = file_get_contents('http://maps.googleapis.com/maps/api/geocode/json?latlng='.$latitude.','.$longitude.'&key=AIzaSyAI3ae3yzl_SsVQD3KPTU4dMKfhO4eL4ww'); 
        echo "ajit".$geocodeFromLatLong;
        $output = json_decode($geocodeFromLatLong);
        $status = $output->status;
        //Get address from json data
        $address = ($status=="OK")?$output->results[1]->formatted_address:'';
        //Return address of the given latitude and longitude
        if(!empty($address)){
            return $address;
        }else{
            return false;
        }
    }else{
        return false;   
    }
}
?>