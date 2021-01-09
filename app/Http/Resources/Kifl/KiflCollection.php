<?php

namespace App\Http\Resources\Kifl;

use Illuminate\Http\Resources\Json\Resource;

class KiflCollection extends Resource
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
