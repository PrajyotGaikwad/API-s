<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: DELETE');
header('Access-Control-Allow-Headers:Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods,Authorization,X-Requested-With');

include "config.php";

$data = json_decode(file_get_contents('php://input'),true);

$student_id = $data['student_id'];

$sql = "DELETE FROM `students` WHERE `student_id`='$student_id'";

if (mysqli_query($conn,$sql)) 
{
  echo json_encode(array('message' => 'student record deleted','status' => true));	
}
else
{
	echo json_encode(array('message' => 'student record not deleted','status' => false));
}
?>