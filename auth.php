<?php
 session_start();
    if(!(isset($_SESSION['user_email_address'])))
    {
        header("location:index.php");
    }
    else
    {
    
	include 'db_connect.php';
	
	extract($_POST);
    $a = $_SESSION['user_email_address'];
	$qry = $conn->query("SELECT * FROM users where google_id= '$a'");
	if($qry->num_rows > 0){
		foreach($qry->fetch_array() as $k => $val){
			if($k=='id' || $k=='user_type')
			$_SESSION['login_'.$k] = $val;
		}
		
	}
        $name = $_SESSION['user_first_name'];
    }

    ?>