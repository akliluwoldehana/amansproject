<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Staff extends Model
{
    public function profile()
    {
        return $this->belongsTo('App\Models\Profile');
    }
}
