<?php

namespace App\Http\Controllers;

use App\Http\Requests\AnnouncementRequest;
use App\Http\Resources\Announcement\AnnouncementCollection;
use App\Http\Resources\Announcement\AnnouncementResource;
use App\Models\Announcement;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class AnnouncementController extends Controller
{
    public function index()
    {
        return AnnouncementCollection::collection(Announcement::all()->sortByDesc('id'));
    }


    public function store(AnnouncementRequest $request)
    {
        $validated = $request->validated();

        $announcement = new Announcement();
        $announcement->title = $validated['title'];
        $announcement->detail = $validated['detail'];
//        $announcement->profile_id = $validated['profile_id'];
        $announcement->profile_id = 1;
        if($validated['published']){
            $announcement->published = $validated['published'];
        }

        $announcement->save();

        return response(['announcement' => $announcement], Response::HTTP_CREATED);
    }

    public function show(Announcement $announcement)
    {
        return new AnnouncementResource($announcement);
    }


    public function update(AnnouncementRequest $request, Announcement $announcement)
    {
        $validated = $request->validated();

        $announcement->title = $validated['title'];
        $announcement->detail = $validated['detail'];
//        $announcement->profile_id = $validated['profile_id'];
        $announcement->profile_id = 1;
        if($validated['published']){
            $announcement->published = $validated['published'];
        }

        $announcement->save();
        return response(['announcement' => $announcement], Response::HTTP_ACCEPTED);
    }

    public function destroy(Announcement $announcement)
    {
        $announcement->delete();

        return response(['announcement' => $announcement], Response::HTTP_NO_CONTENT);
    }
}
