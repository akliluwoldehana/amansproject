<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Teacher extends Model
{
    public function profile()
    {
        return $this->belongsTo('App\Models\Profile');
    }

    public function kifls()
    {
        return $this->belongsToMany('App\Models\Kifl');
    }

    public function subjects()
    {
        return $this->belongsToMany('App\Models\Subject');
    }


}
