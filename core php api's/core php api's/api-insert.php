<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: PUT');
header('Access-Control-Allow-Headers:Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods,Authorization,X-Requested-With');

include "studconndb.php";

$data = file_get_contents('php://input');
$array = json_decode($data,true);
$count = count($array);

for ($i=0; $i <$count ; $i++) { 

	$student_id = $array[$i]['student_id'];
	$name = $array[$i]['name'];
	$age = $array[$i]['age'];
	$city = $array[$i]['city'];

$sql = "INSERT INTO `students`(`student_id`, `name`, `age`, `city`) VALUES ('$student_id','$name','$age','$city')";

if (mysqli_query($conn,$sql)) 
{
  echo json_encode(array('message' => 'student record inserted','status' => true));	
}
else
{
  echo json_encode(array('message' => 'student record not inserted','status' => false));
}
}
?>