<?php

use Illuminate\Http\Request;


Route::apiResource('/attendances', 'AttendanceController');

Route::apiResource('/announcements', 'AnnouncementController');

Route::apiResource('/messages', 'MessageController');

Route::apiResource('/grades', 'GradeController');

Route::apiResource('/guardians', 'GuardianController');

Route::apiResource('/kifls', 'KiflController');

Route::apiResource('/profiles', 'ProfileController');

Route::apiResource('/results', 'ResultController');

Route::apiResource('/roles', 'RoleController');

Route::apiResource('/staffs', 'StaffController');

Route::apiResource('/students', 'StudentController');

Route::apiResource('/subjects', 'SubjectController');

Route::apiResource('/teachers', 'TeacherController');

Route::apiResource('/annual_schedules', 'AnnualScheduleController');

Route::group(['prefix' => '/register'], function (){
   Route::post('/guardian', 'RegistrationController@registerGuardian');
   Route::post('/student', 'RegistrationController@registerStudent');
   Route::post('/teacher', 'RegistrationController@registerTeacher');
   Route::post('/staff', 'RegistrationController@registerStaff');
});


Route::post('/passport_login', 'PassportController@login');
Route::post('/passport_register', 'PassportController@register');

Route::middleware('auth:api')->group(function (){

   Route::get('/user', 'PassportController@details');

});
