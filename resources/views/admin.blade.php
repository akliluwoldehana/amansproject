@extends('layouts.app')

@section('content')

    <h3 class="">Admininstration</h3>

    <div class="row">
        <div class="col-md-4">
            <a class="btn btn-sm btn-primary" href="/admin/teachers">
                Teachers
            </a>
            <a class="btn btn-sm btn-danger">
                Students
            </a>
            <a class="btn btn-sm btn-success">
                Staff
            </a>
            <a class="btn btn-sm btn-info" href="{{ route('announcements.index') }}">
                Announcements
            </a>
        </div>
    </div>

@endsection
