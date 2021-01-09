<?php

namespace App\Http\Controllers;

use App\Http\Requests\ResultRequest;
use App\Http\Resources\Result\ResultCollection;
use App\Http\Resources\Result\ResultResource;
use App\Models\Result;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class ResultController extends Controller
{
    public function index()
    {
        return ResultCollection::collection(Result::all());
    }

    public function store(ResultRequest $request)
    {
        $validated = $request->validated();

        $result = new Result();
        $result->test_1 = $validated['test_1'];
        $result->test_2 = $validated['test_2'];
        $result->assignment_1 = $validated['assignment_1'];
        $result->assignment_2 = $validated['assignment_2'];
        $result->mid = $validated['mid'];
        $result->final = $validated['final'];
        $result->conduct = $validated['conduct'];
        $result->kifl_id= $validated['kifl_id'];
        $result->subject_id= $validated['subject_id'];
        $result->student_id= $validated['student_id'];
        $result->save();

        return response(['result' => $result], Response::HTTP_CREATED);
    }

    public function show(Result $result)
    {
        return new ResultResource($result);
    }

    public function update(ResultRequest $request, Result $result)
    {
        $validated = $request->validated();

        $result->test_1 = $validated['test_1'];
        $result->test_2 = $validated['test_2'];
        $result->assignment_1 = $validated['assignment_1'];
        $result->assignment_2 = $validated['assignment_2'];
        $result->mid = $validated['mid'];
        $result->final = $validated['final'];

        $result->conduct = $validated['conduct'];

        $result->kifl_id= $validated['kifl_id'];
        $result->subject_id= $validated['subject_id'];
        $result->student_id= $validated['student_id'];

        $result->save();

        return response(['result' => $result], Response::HTTP_ACCEPTED);
    }

    public function destroy(Result $result)
    {
        $result->delete();

        return response(['result' => $result], Response::HTTP_NO_CONTENT);
    }
}
