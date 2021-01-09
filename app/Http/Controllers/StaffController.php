<?php

namespace App\Http\Controllers;

use App\Http\Requests\StaffRegisterRequest;
use App\Http\Resources\Staff\StaffCollection;
use App\Http\Resources\Staff\StaffResource;
use App\Models\Staff;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class StaffController extends Controller
{
    public function index()
    {
        return StaffCollection::collection(Staff::all());
    }

    public function store(Request $request)
    {
        return response(['message' => 'Method Not Allowed'], Response::HTTP_METHOD_NOT_ALLOWED);
    }

    public function show(Staff $staff)
    {
        return new StaffResource($staff);
    }

    public function update(StaffRegisterRequest $request, Staff $staff)
    {
        $validated = $request->validated();

//        $staff->name = $validated['name'];
        $staff->save();

        return response(['staff' => $staff], Response::HTTP_ACCEPTED);
    }

    public function destroy(Staff $staff)
    {
        return response(['message' => 'Method Not Allowed'], Response::HTTP_METHOD_NOT_ALLOWED);
    }
}
