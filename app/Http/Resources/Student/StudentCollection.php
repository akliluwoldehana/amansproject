<?php

namespace App\Http\Resources\Student;

use Illuminate\Http\Resources\Json\Resource;

class StudentCollection extends Resource
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
            'name' => $this->fullName,
            'kifl' => $this->kifl,
        ];
    }
}
