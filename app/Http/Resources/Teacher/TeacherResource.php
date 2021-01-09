<?php

namespace App\Http\Resources\Teacher;

use Illuminate\Http\Resources\Json\JsonResource;

class TeacherResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'phone' => $this->phone,
            'profile' => $this->profile,
            'kifls' => $this->kifls,
            'subjects' => $this->subjects
        ];
    }
}
