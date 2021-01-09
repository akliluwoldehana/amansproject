<?php

namespace App\Http\Controllers;


use App\Http\Requests\GuardianRequest;
use App\Http\Requests\StaffRegisterRequest;
use App\Http\Requests\StudentRegisterRequest;
use App\Http\Requests\TeacherRegisterRequest;
use App\Models\Guardian;
use App\Models\Profile;
use App\Models\Staff;
use App\Models\Student;
use App\Models\Teacher;
use App\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Symfony\Component\HttpFoundation\Response;

class RegistrationController extends Controller
{
    public function index()
    {
        return 'Registration Route';
    }

    public function registerStudent(StudentRegisterRequest $request)
    {
        $validated = $request->validated();

        $user = new User();
        $user->name = $validated['fullName'];
        $user->email = Str::lower($validated['fullName']) . random_int(10,900) . '@school.server';
        $user->password = Hash::make(random_int(10000000, 1000000000));
        $user->save();

        $profile = new Profile();
        $profile->user_id = $user->id;
        $profile->picture = 'none';
        $profile->bio= 'none';
        $profile->phone = 'none';
        $profile->save();

        $profile_role = DB::insert('insert into profile_role (profile_id, role_id) values (?, ?)', [$profile->id, 2]);


        $student = new Student();
        $student->fullName = $validated['fullName'];
        $student->age = $validated['age'];
        $student->gender = $validated['gender'];
        $student->birthDate = $validated['birthDate'];
        $student->birthPlace = $validated['birthPlace'];
        $student->address = $validated['address'];
        $student->fatherFullname = $validated['fatherFullName'];
        $student->fatherAddress = $validated['fatherAddress'];
        $student->fatherPhone = $validated['fatherPhone'];
        $student->motherFullname = $validated['motherFullName'];
        $student->motherAddress = $validated['motherAddress'];
        $student->motherPhone = $validated['motherPhone'];
        $student->kifl_id = $validated['kifl_id'];
        $student->parent_id = $validated['parent_id'];
        $student->profile_id = $profile->id;
        $student->save();

        return response(['user' => $user, 'profile' => $profile, 'student' => $student, 'roles' => $profile_role], Response::HTTP_CREATED);;
    }

    public function registerGuardian(GuardianRequest $guardianRequest)
    {
        $validated = $guardianRequest->validated();


        $user = new User();
        $user->name = $validated['name'];
        $user->email = Str::lower($validated['name']) . random_int(10,900) . '@school.server';
        $user->password = Hash::make(random_int(10000000, 1000000000));
        $user->save();

        $profile = new Profile();
        $profile->user_id = $user->id;
        $profile->picture = 'none';
        $profile->bio= 'none';
        $profile->phone = 'none';
        $profile->save();


        $profile_role = DB::insert('insert into profile_role (profile_id, role_id) values (?, ?)', [$profile->id, 4]);

        $result = null;
        if($profile_role){
            $result = DB::select('select * from profile_role where profile_id = :id', ['id' => $profile->id]);
        }

        $guardian = new Guardian();
        $guardian->profile_id = $profile->id;
        $guardian->save();

        return response(['user' => $user, 'profile' => $profile,'guardian' => $guardian, 'profile_role' => $result], Response::HTTP_CREATED);
    }

    public function registerTeacher(TeacherRegisterRequest $teacherRegisterRequest)
    {
        $validated = $teacherRegisterRequest->validated();

        $user = new User();
        $user->name = $validated['name'];
        $user->email = Str::lower($validated['name']) . random_int(10,900) . '@school.server';
        $user->password = Hash::make(random_int(10000000, 1000000000));
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

        return response(['user' => $user, 'profile' => $profile,'teacher' => $teacher, 'profile_role' => $result], Response::HTTP_CREATED);
    }

    public function registerStaff(StaffRegisterRequest $staffRegisterRequest)
    {
        $validated = $staffRegisterRequest->validated();

        $user = new User();
        $user->name = $validated['name'];
        $user->email = Str::lower($validated['name']) . random_int(10,900) . '@school.server';
        $user->password = Hash::make(random_int(10000000, 1000000000));
        $user->save();

        $profile = new Profile();
        $profile->user_id = $user->id;
        $profile->picture = 'none';
        $profile->bio= 'none';
        $profile->phone = 'none';
        $profile->save();


        $staff = new Staff();
        $staff->profile_id = $profile->id;
        $staff->save();


        $profile_role = DB::insert('insert into profile_role (profile_id, role_id) values (?, ?)', [$profile->id, 3]);

        $result = null;
        if($profile_role){
            $result = DB::select('select * from profile_role where profile_id = :id', ['id' => $profile->id]);
        }

        return response(['user' => $user, 'profile' => $profile,'staff' => $staff, 'profile_role' => $result], Response::HTTP_CREATED);;
    }
}
