<?php

namespace App\Http\Controllers;

use App\Http\Requests\SubjectRequest;
use App\Http\Resources\Subject\SubjectCollection;
use App\Http\Resources\Subject\SubjectResource;
use App\Models\Subject;
use Symfony\Component\HttpFoundation\Response;

class SubjectController extends Controller
{
    public function index()
    {
        return SubjectCollection::collection(Subject::all());
    }

    public function store(SubjectRequest $request)
    {
        $validated = $request->validated();

        $subject = new Subject();
        $subject->subject = $validated['subject'];
        $subject->kifl_id = $validated['kifl_id'];
        $subject->save();

        return response(['subject' => $subject], Response::HTTP_CREATED);
    }

    public function show(Subject $subject)
    {
        return new SubjectResource($subject);
    }

    public function update(SubjectRequest $request, Subject $subject)
    {
        $validated = $request->validated();

        $subject->subject = $validated['subject'];
        $subject->kifl_id = $validated['kifl_id'];
        $subject->save();

        return response(['subject' => $subject], Response::HTTP_ACCEPTED);
    }

    public function destroy(Subject $subject)
    {
        return response(['message' => 'Method Not Allowed'], Response::HTTP_METHOD_NOT_ALLOWED);
    }
}
