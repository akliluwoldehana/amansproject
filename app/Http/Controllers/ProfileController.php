<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProfileRequest;
use App\Http\Resources\Profile\ProfileCollection;
use App\Http\Resources\Profile\ProfileResource;
use App\Models\Profile;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class ProfileController extends Controller
{
    public function index()
    {
        return ProfileCollection::collection(Profile::all());
    }

    public function store(Request $request)
    {
        //
    }

    public function show(Profile $profile)
    {
        return new ProfileResource($profile);
    }

    public function update(ProfileRequest $request, Profile $profile)
    {
        $validated = $request->validated();

        $profile->picture = $validated['picture'];
        $profile->bio = $validated['bio'];
        $profile->phone = $validated['phone'];
        $profile->save();

        return response(['profile' => $profile], Response::HTTP_ACCEPTED);
    }

    public function destroy(Profile $profile)
    {
        return response(['message' => 'Method Not Allowed'], Response::HTTP_METHOD_NOT_ALLOWED);
    }
}
