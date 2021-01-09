<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Schedule extends Model
{
    public function kifl()
    {
        return $this->belongsTo('App\Models\Kifl');
    }

    public function subject()
    {
        return $this->belongsTo('App\Models\Subject');
    }
}
