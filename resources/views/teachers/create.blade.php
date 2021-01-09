@extends('layouts.app')

@section('content')
    <div class="row my-3">
        <div class="col-md-10">
            <h4 class="text">Create a Teacher</h4>
        </div>
    </div>
    @if($errors->any())
        <div class="row">
            <div class="col-md-6">
                <div class="card shadow-lg p-3 border-info">
                    <form method="post" action="{{ route('teachers.store') }}">
                        @csrf
                        <label for="age">Name</label>
                        <input type="text" class="form-control" {{ $errors->has('name') ? 'border-danger' : '' }} " id="name" name="name"  value="{{ old('name')}}" placeholder="Name">

                        <label for="phone">Phone</label>
                        <input type="text" class="form-control" id="phone" name="phone"  value="{{ old('phone') }}" placeholder="Phone">

                        <button class="btn-outline-info btn btn-sm mt-3">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    @else
        <div class="row">
            <div class="col-md-6">
                <div class="card shadow-lg p-3 border-info">
                    <form method="post" action="{{ route('teachers.store') }}">
                        @csrf
                        <label for="age">Name</label>
                        <input type="text" class="form-control" {{ $errors->has('name') ? 'border-danger' : '' }} " id="name" name="name"  value="{{ old('name')}}" placeholder="Name">

                        <label for="phone">Phone</label>
                        <input type="text" class="form-control" id="phone" name="phone"  value="{{ old('phone') }}" placeholder="Phone">

                        <button class="btn-outline-info btn btn-sm mt-3">Submit</button>

                    </form>
                </div>
            </div>
        </div>
    @endif

@endsection
