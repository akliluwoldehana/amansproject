<?php

namespace App\Http\Resources\AnnualSchedule;

use Illuminate\Http\Resources\Json\JsonResource;

class AnnualScheduleResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return parent::toArray($request);
    }
}
