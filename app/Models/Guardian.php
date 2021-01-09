<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Guardian extends Model
{
    public function profile()
    {
        return $this->belongsTo('App\Models\Profile');
    }

    public function children()
    {
        return $this->hasMany('App\Models\Student', 'parent_id', 'id');
    }

}
