<?php

namespace App\Http\Controllers;
use App\Models\Student;
use Illuminate\Http\Request;

class StudentController extends Controller
{
	public function index()
	{
		//display all
		$student = Student::all();
		return response()->json(['students'=> $student], 200);
	}

	public function show($id)
	{
		//display single
		$student = Student::find($id);
		if($student)
		{
		return response()->json(['student'=> $student], 200);
	  }
	  else
	  {
		return response()->json(['message'=> 'No student Found'], 404);
	  }	
	}

    public function store(Request $request)
    {
    	//insert singledata
    	$request->validate([
    		'name'=>'required|max:191',
    		'age'=>'required|max:191',
    		'city'=>'required|max:191',
        ]);

    	$student = new Student;
    	$student->name = $request->name;
    	$student->age = $request->age;
    	$student->city = $request->city;
    	$student->save();

    	return response()->json(['message'=>'Student Inserted Successfully'], 200);
    }

	 //insert multiple data  
	 public function multistore(Request $request)
	 {
		 if($request->isMethod('post')){
		 $student = $request->input();	
 
		 foreach($student['students'] as $key => $value) 
		 {
		 $student = new Student;
		 $student->name = $value['name'];
		 $student->age = $value['age'];
		 $student->city = $value['city'];
		 $student->save();
		 }
		 return response()->json(['message'=>'Multiple Students Records Inserted Successfully'], 200);
		 }
	 }

    public function update(Request $request, $id)
    {
    	//update data
    	$request->validate([
    		'name'=>'required|max:191',
    		'age'=>'required|max:191',
    		'city'=>'required|max:191',
        ]);

        $student = Student::find($id);
        if($student)
        {
     	$student->name = $request->name;
    	$student->age = $request->age;
    	$student->city = $request->city;
    	$student->update();

       return response()->json(['message'=>'Student Updated Successfully'], 200);	
       }
       else
       {
       return response()->json(['message'=>'No Student Found'], 404);
       }
    }

    public function delete($id)
    {
    	//delete data
       $student = Student::find($id);
       if($student)
       {
       $student->delete();
       return response()->json(['message'=>'Student Deleted Successfully'], 200);	
       }
       else
       {
       return response()->json(['message'=>'No Student Found'], 404);
       }
    }
}

//INSERT MULTIPLE DATA IN POSTMAN
// {
// "student":[
//     {    
//     "name" : "New Data",
//     "age" :"23",
//     "city" : "Pune City"
// }
// ]
// }
