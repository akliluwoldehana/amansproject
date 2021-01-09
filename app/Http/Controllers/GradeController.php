<?php

namespace App\Http\Controllers;

use App\Http\Requests\GradeStoreRequest;
use App\Http\Resources\Grade\GradeCollection;
use App\Http\Resources\Grade\GradeResource;
use App\Models\Grade;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class GradeController extends Controller
{
    public function index()
    {
        return GradeCollection::collection(Grade::all());
    }

    public function store(GradeStoreRequest $request)
    {
        $validated = $request->validated();

        $grade = new Grade();
        $grade->grade = $validated['grade'];
        $grade->save();

        return response(['grade' => $grade], Response::HTTP_CREATED);

    }

    public function show(Grade $grade)
    {
        return new GradeResource($grade);
    }

    public function update(GradeStoreRequest $gradeStoreRequest, Grade $grade)
    {
        $validated = $gradeStoreRequest->validated();

        $grade->grade = $validated['grade'];
        $grade->save();

        return response(['grade' => $grade], Response::HTTP_ACCEPTED);
    }

    public function destroy(Grade $grade)
    {
        $grade->delete();

        return response(['grade' => null], Response::HTTP_NO_CONTENT);
    }
}
