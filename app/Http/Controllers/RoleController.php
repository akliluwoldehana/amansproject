<?php

namespace App\Http\Controllers;

use App\Http\Requests\RoleRequest;
use App\Http\Resources\Role\RoleCollection;
use App\Http\Resources\Role\RoleResource;
use App\Models\Role;
use Symfony\Component\HttpFoundation\Response;

class RoleController extends Controller
{
    public function index()
    {
        return RoleCollection::collection(Role::all());
    }

    public function store(RoleRequest $request)
    {
        $validated = $request->validated();

        $role = new Role();
        $role->role = $validated['role'];
        $role->save();

        return response(['role' => $role], Response::HTTP_CREATED);
    }

    public function show(Role $role)
    {
        return new RoleResource($role);
    }

    public function update(RoleRequest $request, Role $role)
    {
        $validated = $request->validated();

        $role->role = $validated['role'];
        $role->save();

        return response(['role' => $role], Response::HTTP_ACCEPTED);
    }

    public function destroy(Role $role)
    {
        $role->delete();

        return response(['role' => $role], Response::HTTP_NO_CONTENT);
    }
}
