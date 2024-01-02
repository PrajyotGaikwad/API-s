<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Http\Controllers\StudentController;

class Student extends Model
{
    use HasFactory;
    protected $table = 'students';
    protected $primaryKey = "student_id";
    protected $fillable = [
        'student_id',
    	'name',
    	'age',
    	'city',
    ];
}
