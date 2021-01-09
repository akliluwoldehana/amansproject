<?php

namespace App\Http\Resources\Student;

use App\Http\Resources\Result\ResultCollection;
use App\Models\Result;
use Illuminate\Http\Resources\Json\JsonResource;

class StudentResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {

        $raw_results = Result::where('student_id', $this->id)->get();

        $results = ResultCollection::collection($raw_results);

        return [
            'id' => $this->id,
            'full_name' => $this->fullName,
            'age' => $this->age,
            'gender' => $this->gender,
            'birth_date' => $this->birthDate,
            'birth_place' => $this->birthPlace,
            'address' => $this->address,
            'father_full_name' => $this->fatherFullName,
            'father_address' => $this->fatherAddress,
            'father_phone' => $this->fatherPhone,
            'mother_full_name' => $this->motherFullName,
            'mother_address' => $this->motherAddress,
            'mother_phone' => $this->motherPhone,
            'kifl' => $this->kifl,
            'profile' => $this->profile,
            'parent' => $this->guardian,
            'results' => $results,
        ];
    }
}
