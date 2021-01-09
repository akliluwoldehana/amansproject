<?php

namespace App\Http\Resources\Profile;

use Illuminate\Http\Resources\Json\JsonResource;

class ProfileResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {

        $roles = $this->roles;

        return [
            'id' => $this->id,
            'user_id' => $this->user_id,
            'picture' => $this->picture,
            'bio' => $this->bio,
            'phone' => $this->phone,
            'role' => $roles,
        ];
    }
}
