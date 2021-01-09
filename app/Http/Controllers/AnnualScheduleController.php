<?php

namespace App\Http\Controllers;

use App\Http\Resources\AnnualSchedule\AnnualScheduleCollection;
use App\Models\AnnualSchedule;
use Illuminate\Http\Request;

class AnnualScheduleController extends Controller
{
    public function index()
    {
        return AnnualScheduleCollection::collection(AnnualSchedule::all()->where('published', true));
    }

    public function store(Request $request)
    {
        //
    }

    public function show(AnnualSchedule $annualSchedule)
    {
        //
    }


    public function update(Request $request, AnnualSchedule $annualSchedule)
    {
        //
    }

    public function destroy(AnnualSchedule $annualSchedule)
    {
        //
    }
}
