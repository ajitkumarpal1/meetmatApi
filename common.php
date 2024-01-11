<?php

    	header("Access-Control-Allow-Origin: *");
		$cn =new mysqli("localhost","root","","r_bigness");
		#$cn =new mysqli("184.168.96.201","oknext","12345678","r_bigness");
		/**
		if (!defined('SERVERNAME')) define('SERVERNAME', '184.168.96.201');
    	if (!defined('USERNAME')) define('USERNAME', 'oknext');
    	if (!defined('PASSWORD')) define('PASSWORD', '12345678');
    	if (!defined('DBNAME')) define('DBNAME', 'r_bigness');

        $cn = new mysqli(SERVERNAME, USERNAME, PASSWORD, 'r_bigness');
		
		if(mysqli_connect_errno())
		{
			echo mysqli_connect_errno();
			die();
		}**/
?>