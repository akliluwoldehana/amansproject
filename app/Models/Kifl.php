<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Kifl extends Model
{

    public function grade()
    {
        return $this->belongsTo('App\Models\Grade', 'id');
    }

    public function students()
    {
        return $this->hasMany('App\Models\Student');
    }

    public function results()
    {
        return $this->hasMany('App\Models\Result');
    }

    public function teachers()
    {
        return $this->belongsToMany('App\Models\Teacher');
    }

    public function subjects()
    {
        return $this->hasMany('App\Models\Subject');
    }

    public function attendance()
    {
        return $this->hasMany('App\Models\Attendance');
    }

    public function schedules()
    {
        return $this->hasMany('App\Models\Schedule');
    }
}
