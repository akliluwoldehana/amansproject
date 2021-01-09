<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StudentRegisterRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'fullName' => 'required|string',
            'age' => 'required|numeric',
            'gender' => 'required|string|max:10',
            'birthDate' => 'required|date',
            'birthPlace' => 'required|string',
            'address' => 'required|string',
            'fatherFullName' => 'sometimes|string',
            'fatherAddress' => 'sometimes|string',
            'fatherPhone' => 'sometimes|string',
            'motherFullName' => 'sometimes|string',
            'motherAddress' => 'sometimes|string',
            'motherPhone' => 'sometimes|string',
            'kifl_id' => 'required|numeric',
            'parent_id' => 'required|numeric',
        ];
    }
}
