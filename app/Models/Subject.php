<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Subject extends Model
{
    public function teachers()
    {
        return $this->belongsToMany('App\Models\Teacher');
    }

    public function results()
    {
        return $this->hasMany('App\Models\Result');
    }

    public function kifl()
    {
        return $this->belongsTo('App\Models\Kifl');
    }

    public function schedules()
    {
        return $this->hasMany('App\Models\Schedule');
    }
}
