<?php

namespace App\Http\Controllers;

use App\Http\Requests\TeacherRequest;
use App\Http\Resources\Teacher\TeacherCollection;
use App\Http\Resources\Teacher\TeacherResource;
use App\Models\Teacher;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class TeacherController extends Controller
{
    public function index()
    {
        return TeacherCollection::collection(Teacher::all());
    }

    public function store(TeacherRequest $request)
    {
        return response(['message' => 'Method Not Allowed'], Response::HTTP_METHOD_NOT_ALLOWED);
    }


    public function show(Teacher $teacher)
    {
        return new TeacherResource($teacher);

        // TODO: show profile, kifls they're teaching and subjects they teach
    }


    public function update(TeacherRequest $request, Teacher $teacher)
    {
        $validated = $request->validated();

        $teacher->name = $validated['name'];
        $teacher->phone = $validated['phone'];

        $teacher->save();

        return response(['teacher' => $teacher], Response::HTTP_ACCEPTED);
    }


    public function destroy(Teacher $teacher)
    {
        return response(['message' => 'Method Not Allowed'], Response::HTTP_METHOD_NOT_ALLOWED);
    }
}
