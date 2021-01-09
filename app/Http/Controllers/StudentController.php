<?php

namespace App\Http\Controllers;

use App\Http\Requests\StudentRequest;
use App\Http\Resources\Student\StudentCollection;
use App\Http\Resources\Student\StudentResource;
use App\Models\Student;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class StudentController extends Controller
{
    public function index()
    {
        return StudentCollection::collection(Student::all());
    }


    public function store(Request $request)
    {
        return response(['message' => 'Method Not Allowed'], Response::HTTP_METHOD_NOT_ALLOWED);
    }


    public function show(Student $student)
    {
        return new StudentResource($student);
    }


    public function update(StudentRequest $request, Student $student)
    {
        $validated = $request->validated();

        $student->fullName = $validated['fullName'];
        $student->age = $validated['age'];
        $student->gender = $validated['gender'];
        $student->birthDate = $validated['birthDate'];
        $student->birthPlace = $validated['birthPlace'];
        $student->address = $validated['address'];
        $student->fatherFullname = $validated['fatherFullName'];
        $student->fatherAddress = $validated['fatherAddress'];
        $student->fatherPhone = $validated['fatherPhone'];
        $student->motherFullname = $validated['motherFullName'];
        $student->motherAddress = $validated['motherAddress'];
        $student->motherPhone = $validated['motherPhone'];
        $student->kifl_id = $validated['kifl_id'];
//        $student->parent_id = $validated['parent_id'];
        // TODO: Uncomment after migration
        $student->save();

        return response(['student' => $student], Response::HTTP_METHOD_NOT_ALLOWED);
    }

    public function destroy(Student $student)
    {
        return response(['message' => 'Method Not Allowed'], Response::HTTP_METHOD_NOT_ALLOWED);
    }
}
