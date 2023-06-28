<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers:Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods,Authorization,X-Requested-With');

include "studconndb.php";

$data = json_decode(file_get_contents('php://input'),true);

$student_id = $data['student_id'];
$name = $data['name'];
$age = $data['age'];
$city = $data['city'];

$sql = "UPDATE `students` SET `name`='$name',`age`='$age',`city`='$city' WHERE `student_id`='$student_id'";

if (mysqli_query($conn,$sql)) 
{
  echo json_encode(array('message' => 'student record updated','status' => true));	
}
else
{
	echo json_encode(array('message' => 'student record not updated','status' => false));
}
?>