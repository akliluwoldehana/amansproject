<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Announcement extends Model
{
    public function publisher()
    {
        return $this->belongsTo('App\Models\Profile');
    }
}
