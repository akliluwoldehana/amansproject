<?php

namespace App\Http\Resources\Subject;

use Illuminate\Http\Resources\Json\JsonResource;

class SubjectResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        $students = $this->kifl->students;

        return [
            'id' => $this->id,
            'subject' => $this->subject,
            'kifl' => $this->kifl,
//            'students' => $students,
        ];
    }
}
