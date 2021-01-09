<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Http\Requests\AnnouncementRequest;
use App\Models\Announcement;
use Illuminate\Http\Request;

class AnnouncementController extends Controller
{
    public function index()
    {
        $announcements = Announcement::all();
        return view('announcements.index', ['announcements' => $announcements]);
    }

    public function create()
    {
        return view('announcements.create');
    }

    public function store(AnnouncementRequest $request)
    {
        $validated = $request->validated();
        $announcement = new Announcement();
        $announcement['title'] = $validated['title'];
        $announcement['detail'] = $validated['detail'];

        // TODO: Change default id from Authentication
        $announcement['profile_id'] = 1;

        if ($request['publish']){
            $announcement['published'] = true;
        } else {
            $announcement['published'] = false;
        }

        $announcement->save();

        return redirect(route('announcements.index'));

    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        $announcement = Announcement::findOrFail($id);
        $announcement->delete();

        return redirect(route('announcements.index'));
    }
}
