<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Attendance extends Model
{
    public function kifl()
    {
        return $this->belongsTo('App\Models\Kifl');
    }

    public function student()
    {
        return $this->belongsTo('App\Models\Student');
    }
}
