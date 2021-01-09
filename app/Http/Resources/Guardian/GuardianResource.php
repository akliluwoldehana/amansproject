<?php

namespace App\Http\Resources\Guardian;


use Illuminate\Http\Resources\Json\JsonResource;

class GuardianResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        $children = $this->children;

        return [
            'id' => $this->id,
            'profile' => $this->profile,
            'children' => $children,
            'length' => $children->count(),
        ];
    }
}
