<?php

namespace App\Http\Controllers;

use App\Http\Requests\AttendanceRequest;
use App\Http\Resources\Attendance\AttendanceCollection;
use App\Http\Resources\Attendance\AttendanceResource;
use App\Models\Attendance;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class AttendanceController extends Controller
{
    public function index()
    {
        return AttendanceCollection::collection(Attendance::all()->where('present', 0));
    }

    public function store(AttendanceRequest $request)
    {
        $validated = $request->validated();

        $attendance = new Attendance();
        if($validated['present']){
            $attendance->present = $validated['present'];
        } else {
            $attendance->present = false;
        }
        $attendance->student_id = $validated['student_id'];
        $attendance->kifl_id = $validated['kifl_id'];
        $attendance->save();

        return response(['attendance' => $attendance], Response::HTTP_OK);
    }

    public function show(Attendance $attendance)
    {
        return new AttendanceResource($attendance);
    }

    public function update(Request $request, Attendance $attendance)
    {
        $validated = $request->validated();

        if($validated['present']){
            $attendance->present = $validated['present'];
        } else {
            $attendance->present = false;
        }
        $attendance->student_id = $validated['student_id'];
        $attendance->kifl_id = $validated['kifl_id'];
        $attendance->save();

        return response(['attendance' => $attendance], Response::HTTP_ACCEPTED);
    }

    public function destroy(Attendance $attendance)
    {
        return response(['message' => 'Method Not Allowed'], Response::HTTP_METHOD_NOT_ALLOWED);
    }
}
