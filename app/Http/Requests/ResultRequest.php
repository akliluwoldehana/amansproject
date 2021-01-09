<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ResultRequest extends FormRequest
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
            'conduct' => 'sometimes|string',
            'test_1' => 'sometimes|numeric',
            'test_2' => 'sometimes|numeric',
            'assignment_1' => 'sometimes|numeric',
            'assignment_2' => 'sometimes|numeric',
            'mid' => 'sometimes|numeric',
            'final' => 'sometimes|numeric',
            'kifl_id' => 'required|numeric',
            'student_id' => 'required|numeric',
            'subject_id' => 'required|numeric',
        ];
    }
}
