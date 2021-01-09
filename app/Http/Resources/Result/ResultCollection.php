<?php

namespace App\Http\Resources\Result;

use Illuminate\Http\Resources\Json\Resource;

class ResultCollection extends Resource
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        $total = $this->test_1 + $this->test_2 + $this->assignment_1 + $this->assignment_2 + $this->mid + $this->final;
        $percent = $total / 100;
        return [
            "id" => $this->id,
            "conduct"=> $this->conduct,
            "test_1" => $this->test_1,
            "test_2"=> $this->test_2,
            "assignment_1" => $this->assignment_1,
            "assignment_2" => $this->assignment_2,
            "mid" => $this->mid,
            "final" => $this->final,
            "kifl_id" => $this->kifl,
            "student" => $this->student,
            "subject" => $this->subject,
            "total" => $total,
//            "percent" => $percent,
        ];
    }
}
