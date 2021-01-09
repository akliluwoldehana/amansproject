<?php

namespace App\Http\Controllers;

use App\Http\Requests\KiflRequest;
use App\Http\Resources\Kifl\KiflCollection;
use App\Http\Resources\Kifl\KiflResource;
use App\Models\Kifl;
use Symfony\Component\HttpFoundation\Response;

class KiflController extends Controller
{
    public function index()
    {
        return KiflCollection::collection(Kifl::all());
    }


    public function store(KiflRequest $request)
    {
        $validated = $request->validated();

        $kifl = new Kifl();
        $kifl->year = $validated['year'];
        $kifl->section = $validated['section'];
        $kifl->capacity = $validated['capacity'];
        $kifl->grade_id = $validated['grade_id'];
        $kifl->save();

        return response(['kifl' => $kifl], Response::HTTP_CREATED);
    }

    public function show(Kifl $kifl)
    {
        return new KiflResource($kifl);
        // TODO: Display all students in the kifl
    }


    public function update(KiflRequest $request, Kifl $kifl)
    {
        $validated = $request->validated();

        $kifl->year = $validated['year'];
        $kifl->section = $validated['section'];
        $kifl->capacity = $validated['capacity'];
        $kifl->grade_id = $validated['grade_id'];
        $kifl->save();

        return response(['kifl' => $kifl], Response::HTTP_ACCEPTED);
    }


    public function destroy(Kifl $kifl)
    {
        $kifl->delete();

        return response(['kifl' => null], Response::HTTP_NO_CONTENT);
    }
}

