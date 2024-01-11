<?php
  include 'common.php';
  
  
  $userID = $_REQUEST["userID"];
  $types=$_POST['types'];
  $string=$_REQUEST["string"];
  $fs="";
  $post="";
  $k=0;
  $filec=0;
  $fs="";
  for($i=0;$i<count($types);$i++)
  {
    //echo ("sdasdas".$types[$i]);
    if($types[$i]=='string')
    {
      $post=$post.'<p>';
      if(isset($string[strlen($fs)]))
      {
        for ($j=strlen($fs); $string[$j]!='*'; $j++) 
        { 
          $post=$post.$string[$j];
          $fs=$fs.$string[$j];
          if(isset($string[$j+1]))
          {
            if($string[$j+1]=='*')
            {
              //$fs=$fs.'*';
              $post=$post.'</p>';
            }
          }
          else
          {
            $post=$post.'</p>';
            break;
          }
        }
      }
    }
    else
    {
      if($types[$i]=='pic')
      {
        $fs=$fs.'*';
        $post=$post.'<img src="http://localhost/reachbisiness/pics/';
        $flag='pic';
      }
      else
      {
        $fs=$fs.'*';
        $post=$post.'<video width="400" controls><source src="http://localhost/reachbisiness/pics/';
        $flag='video';
      }
        if(!empty($_FILES['file'.$filec]))
        {
          
          $ext = pathinfo($_FILES['file'.$filec]['name'],PATHINFO_EXTENSION);
               $tamp=$i.time().'.'.$ext;
               $post=$post.$tamp.'">';
                if(move_uploaded_file($_FILES["file".$filec]["tmp_name"], 'pics/'.$tamp))
                {
                }
                $filec++;
                if($flag=='video')
                {
                  $post=$post.'</video>';
                }
        }
    }
  }


   $query = "INSERT INTO `post`( `userID`, `post`) VALUES ($userID,'$post')"; 
    
    
    
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
            for ($i=0; $i <count($foll); $i++) { 
              $query = "INSERT INTO `notification`(`productID`, `user`,`type`) VALUES ($pp,$foll[$i],'1')";  
              $cn->query($query);
            }
          #end notification code
        echo  json_encode($pp);
    }
    else
    {   
        $pp  = $cn -> error; 
        echo  json_encode($pp);
    }

    
     
?>