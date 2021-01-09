<?php

namespace App\Http\Controllers;

use App\Http\Requests\GuardianRequest;
use App\Http\Resources\Guardian\GuardianCollection;
use App\Http\Resources\Guardian\GuardianResource;
use App\Models\Guardian;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class GuardianController extends Controller
{
    public function index()
    {
        return GuardianCollection::collection(Guardian::all());
    }

    public function store(GuardianRequest $request)
    {
        return response(['message' => 'Method Not Allowed'], Response::HTTP_METHOD_NOT_ALLOWED);
    }

    public function show(Guardian $guardian)
    {
        return new GuardianResource($guardian);
    }

    public function update(Request $request, Guardian $guardian)
    {
        return response(['message' => 'Method Not Allowed'], Response::HTTP_METHOD_NOT_ALLOWED);
    }

    public function destroy(Guardian $guardian)
    {
        $guardian->delete();

        return response(['guardian' => null], Response::HTTP_NO_CONTENT);
    }
}
