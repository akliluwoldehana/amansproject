<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Http\Requests\TeacherRegisterRequest;
use App\Http\Requests\TeacherRequest;
use App\Models\Profile;
use App\Models\Teacher;
use App\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;


class TeacherController extends Controller
{
    public function index()
    {
        $teachers = Teacher::all();

        return view('teachers.index', ['teachers' => $teachers]);
    }

    public function create()
    {
        return view('teachers.create');
    }

    public function store(TeacherRegisterRequest $request)
    {
        $validated = $request->validated();

        $user = new User();
        $user->name = $validated['name'];
        $user->email = Str::lower($validated['name']) . random_int(10,900) . '@school.server';
//        $user->password = Hash::make(random_int(10000000, 1000000000));
        $user->password = Hash::make('12345678');
        $user->save();

        $profile = new Profile();
        $profile->user_id = $user->id;
        $profile->picture = 'none';
        $profile->bio= 'none';
        $profile->phone = 'none';
        $profile->save();


        $teacher = new Teacher();
        $teacher->name = $validated['name'];
        $teacher->phone = $validated['phone'];
        $teacher->profile_id = $profile->id;
        $teacher->save();


        $profile_role = DB::insert('insert into profile_role (profile_id, role_id) values (?, ?)', [$profile->id, 1]);

        $result = null;
        if($profile_role){
            $result = DB::select('select * from profile_role where profile_id = :id', ['id' => $profile->id]);
        }

//        return response(['user' => $user, 'profile' => $profile,'teacher' => $teacher, 'profile_role' => $result], Response::HTTP_CREATED);;
        return redirect(route('teachers.index'));

    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $teacher = Teacher::findOrFail($id);
        return view('teachers.edit', ['teacher' => $teacher]);
    }

    public function update(TeacherRequest $request, $id)
    {
        $validated = $request->validated();

        $teacher = Teacher::findOrFail($id);
        $teacher->name = $validated['name'];
        $teacher->phone = $validated['phone'];
        $teacher->save();

        return redirect(route('teachers.index'));

    }

    public function destroy($id)
    {
        //
    }
}
