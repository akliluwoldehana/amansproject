<?php

namespace App\Http\Resources\Kifl;


use Illuminate\Http\Resources\Json\JsonResource;

class KiflResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {

        $students = $this->students;

        return [
            'id' => $this->id,
            'year' => $this->year,
            'section' => $this->section,
            'capacity' => $this->capacity,
            'grade_id' => $this->grade_id,
            'students' => $students
        ];
    }
}
