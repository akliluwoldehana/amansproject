<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{

    protected $fillable = [
        'fullName',
        'age',
        'gender',
        'birthDate',
        'birthPlace',
        'address',
        'fatherFullName',
        'fatherAddress',
        'fatherPhone',
        'motherFullName',
        'motherAddress',
        'motherPhone',
        'grade'
    ];

    public function kifl()
    {
        return $this->belongsTo('App\Models\Kifl');
    }

    public function profile()
    {
        return $this->belongsTo('App\Models\Profile');
    }

    public function results()
    {
        return $this->hasMany('App\Models\Result');
    }

    public function guardian()
    {
        return $this->belongsTo('App\Models\Guardian');
    }

    public function attendances()
    {
        return $this->hasMany('App\Models\Attendance');
    }

}
