<?php

namespace App\Http\Controllers;

use App\Http\Requests\PassportRequest;
use App\User;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Hash;

class PassportController extends Controller
{
    public function register(PassportRequest $request)
    {
        $validated = $request->validated();

        $user = User::create([
            'name' => $validated['name'],
            'password' => Hash::make($validated['password']),
            'email' => $validated['email'],
        ]);


        $token = $user->createToken('TutsForWeb')->accessToken;

        return response()->json(['token' => $token], Response::HTTP_OK);
    }

    public function login(Request $request)
    {
        $credentials = $request->validate([
            'email' => 'email|required',
            'password' => 'required'
        ]);

        if (auth()->attempt($credentials)){
            $token = auth()->user()->createToken('authToken')->accessToken;
            return response()->json(['token' => $token], Response::HTTP_OK);
        } else {
            return response()->json(['error' => 'UnAuthorised', 'request' => $credentials], Response::HTTP_UNAUTHORIZED);
        }
    }

    public function details()
    {
        return response()->json(['user' => auth()->user()], 200);
    }
}
