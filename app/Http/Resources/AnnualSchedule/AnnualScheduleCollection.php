<?php

namespace App\Http\Resources\AnnualSchedule;

use Illuminate\Http\Resources\Json\Resource;

class AnnualScheduleCollection extends Resource
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return parent::toArray($request);
    }
}
