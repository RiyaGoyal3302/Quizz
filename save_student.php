<?php 

include 'db_connect.php';

extract($_POST);
$row=$conn->query("SELECT id FROM users where google_id='".$username."'")->fetch_assoc();
$id = $row['id'];
	$chk = $conn->query("SELECT * FROM students where user_id = '".$id."'")->num_rows;
	
	if($chk > 0){
			echo json_encode(array('status'=>2,'msg'=>'Username already exist'));
			exit;
	}
	
		
		$insert_students =$conn->query("INSERT INTO students set user_id = '".$id."', level_section='".$level_section."' ");
		if($insert_students){
			echo json_encode(array('status'=>1));
		}
	
