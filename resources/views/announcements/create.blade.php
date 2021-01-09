@extends('layouts.app')

@section('content')

    <div class="row mt-3">
        <div class="col-md-10">
            <h4 class="text">Create an Announcement</h4>
        </div>
    </div>


    @if($errors->any())
        {{ $errors }}
        <div class="row">
            <div class="col-md-6">
                <div class="card shadow-lg p-3 border-info">
                    <form method="post" action="{{ route('announcements.store') }}">
                        @csrf
                        <label for="title">Title</label>
                        <input type="text" class="form-control"
                               {{ $errors->has('title') ? 'border-danger' : '' }} id="title" name="title"
                               value="{{ old('title')}}" placeholder="Title"/>

                        <label for="phone">Detail</label>
                        <textarea class="form-control" id="detail" name="detail"
                                  placeholder="Detail">
                            {{ old('detail') }}
                        </textarea>

                        <div class="pt-3">

                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="customCheck1" name="publish" checked>
                                <label class="custom-control-label" for="customCheck1">Published</label>
                            </div>

                        </div>

                        <button class="btn-outline-info btn btn-sm mt-3">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    @else
        <div class="row">
            <div class="col-md-6">
                <div class="card shadow-lg p-3 border-info">
                    <form method="post" action="{{ route('announcements.store') }}">
                        @csrf
                        <label for="title">Title</label>
                        <input type="text" class="form-control" id="title" name="title" placeholder="Title">

                        <label for="phone">Detail</label>
                        <textarea class="form-control" id="detail" name="detail" placeholder="Detail"></textarea>

                        <div class="pt-3">

                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="customCheck1" name="publish" checked>
                                <label class="custom-control-label" for="customCheck1">Published</label>
                            </div>

                        </div>

                        <button class="btn-outline-info btn btn-sm mt-3">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    @endif

@endsection
