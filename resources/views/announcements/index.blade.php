@extends('layouts.app')

@section('content')
    <div class="row mt-3">
        <div class="col-md-10">
            <h4 class="text">Announcements</h4>
        </div>
        <div class="col-md-2">
            <a href="{{ route('announcements.create') }}" class="btn btn-secondary">Create New</a>
        </div>
    </div>
    </div>
    <div class="container">
        <table class="table table-hover">
            <thead class="thead-dark">
            <tr>
                <th scope="col">Title</th>
                <th scope="col">Detail</th>
                <th scope="col">Published</th>
                <th scope="col"></th>
                <th scope="col"></th>
            </tr>
            </thead>
            <tbody>
            @foreach($announcements as $ann)
                <tr>
                    <th scope="row">{{ $ann['title'] }}</th>
                    <td>{{ $ann['detail'] }}</td>
                    <td>{{ $ann['published'] == 1 ? 'True' : 'False'}}</td>
                    <td>
                        <a href="{{ route('announcements.edit',$ann['id']) }}"
                           class="btn btn-outline-success btn-sm">Edit</a>
                    </td>
                    <td>
                        <form action="{{ route('announcements.destroy', $ann['id']) }}" method="post">
                            @method('delete')
                            @csrf
                            <button class="btn btn-outline-danger btn-sm ">Delete</button>
                        </form>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
    </div>
@endsection
