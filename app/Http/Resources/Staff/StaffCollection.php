<?php

namespace App\Http\Resources\Staff;

use Illuminate\Http\Resources\Json\Resource;

class StaffCollection extends Resource
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
            'profile' => $this->profile,
        ];
    }
}
