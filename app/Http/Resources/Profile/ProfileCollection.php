<?php

namespace App\Http\Resources\Profile;

use Illuminate\Http\Resources\Json\Resource;

class ProfileCollection extends Resource
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'user_id' => $this->user_id,
            'picture' => $this->picture,
            'bio' => $this->bio,
            'phone' => $this->phone,
        ];
    }
}
