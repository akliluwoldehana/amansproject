<?php

namespace App\Http\Resources\Subject;

use Illuminate\Http\Resources\Json\Resource;

class SubjectCollection extends Resource
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
            'subject' => $this->subject,
            'kifl' => $this->kifl,
        ];
    }
}
