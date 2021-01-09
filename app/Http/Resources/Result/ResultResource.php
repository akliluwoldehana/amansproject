<?php

namespace App\Http\Resources\Result;

use App\Models\Kifl;
use App\Models\Student;
use App\Models\Subject;
use Illuminate\Http\Resources\Json\JsonResource;

class ResultResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {

        $total = $this->test_1 + $this->test_2 + $this->assignment_1 + $this->assignment_2 + $this->mid + $this->final;

        $student = Student::findOrFail($this->student_id);

        $kifl = Kifl::find($this->kifl);

        $subject = Subject::find($this->subject);

        return [
            "id" => $this->id,
            "conduct"=> $this->conduct,
            "test_1" => $this->test_1,
            "test_2"=> $this->test_2,
            "assignment_1" => $this->assignment_1,
            "assignment_2" => $this->assignment_2,
            "mid" => $this->mid,
            "final" => $this->final,
            "total" => $total,
            "kifl" => $kifl,
            "student" => $student,
            "subject" => $subject,
        ];
    }
}
