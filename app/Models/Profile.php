<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function teacher()
    {
        return $this->hasOne('App\Models\Teacher');
    }

    public function student()
    {
        return $this->hasOne('App\Models\Student');
    }

    public function staff()
    {
        return $this->hasOne('App\Models\Staff');
    }

    public function guardian()
    {
        return $this->hasOne('App\Models\Guardian');
    }

    public function roles()
    {
        return $this->belongsToMany('App\Models\Role');
    }

    public function publishes()
    {
        return $this->hasMany('App\Models\Announcement');
    }

    public function sent_messages()
    {
        return $this->hasMany('App\Models\Message', 'sender_id');
    }

    public function received_messages()
    {
        return $this->hasMany('App\Models\Message', 'receiver_id');
    }

}
