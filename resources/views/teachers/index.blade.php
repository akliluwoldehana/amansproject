@extends('layouts.app')

@section('content')
    <div class="row my-3">
        <div class="col-md-10">
            <h4 class="text">All Teachers</h4>
        </div>
        <div class="col-md-2">
            <a href="{{ route('teachers.create') }}" class="btn btn-secondary">Create New</a>
        </div>
    </div>
    <table class="table table-hover">
        <thead class="thead-dark">
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col">Phone</th>
            <th scope="col"></th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        @foreach($teachers as $teacher)
            <tr>
                <th scope="row">{{ $teacher['id'] }}</th>
                <td>{{ $teacher['name'] }}</td>
                <td>{{ $teacher['phone'] }}</td>
                <td>
{{--                    <a href="{{ route('teachers.show',$teacher['id']) }}" class="btn btn-outline-info btn-sm " type="submit">Show Profile &neArr;</a>--}}
                    <a href="/profiles" class="btn btn-outline-info btn-sm " type="submit">Show Profile &neArr;</a>
                </td>
                <td>
                    <a href="{{ route('teachers.edit',$teacher['id']) }}" class="btn btn-outline-success btn-sm " type="submit">Edit</a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
@endsection
