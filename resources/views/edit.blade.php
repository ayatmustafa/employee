@extends('layouts.app')
@section('title')
    edit employee
@endsection

@section('content')

<div class="container mt-4 addemployee  text-capitalize">
    <div class="row text-center"><h1 class="text-center  w-100  pb-2 "> edit data of employee {{$employee->name}}</h1></div>
    <div class="row text-center text-capitalize">
            <div class="col-md-6 offset-3">
                      @if ($errors->any())
                      <div class="alert alert-danger">
                          <ul>
                              @foreach ($errors->all() as $error)
                                  <li>{{ $error }}</li>
                              @endforeach
                          </ul>
                      </div>
                      @endif

                   @if(Session()->has('message'))
                      <p class="alert alert-info">{{ Session()->get('message') }}</p>
                      @endif
            </div>
          </div>
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <form method="post" action="{{url("employee/update",$employee->id)}}" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                  <label for="name">name</label>
                  <input type="text" value="{{$employee->name}}"
                    class="form-control" name="name" id="name" aria-describedby="helpId" placeholder="plz enter emp name">
                </div>
                <div class="form-group">
                        <label for="position">position</label>
                        <input type="text" value="{{$employee->position}}"
                          class="form-control" name="position" id="position" aria-describedby="helpId" placeholder="plz enter emp position">
                      </div>
                <div class="form-group">
                    <label for="about">about employee</label>
                    <textarea class="form-control" id="about" name="about" placeholder="plz write more description about employee">{{$employee->about}}</textarea>
                    </div>
                <div class="form-group">
                <label for="join_date">join date</label>
                <input type="date" class="form-control" id="join_date" name="join_date" value="{{$employee->join_date}}" >
                </div>
                          <div class="container">
                          <div class="row">
                              <div class="col-md-8"> <div class="form-group">
                                    <label for="img">image</label>
                                    <input type="hidden" value="{{$employee->img}}" name="oldimg">
                                    <input type="file" class="form-control" id="img" name="img" placeholder="plz add image of  employee">
                                    </div></div>
                              <div class="col-md-4">
                                  <img src="{{asset('images/'.$employee->img)}}" class="img-fluid">
                              </div>
                          </div>
                          </div>

                        <div class="text-center  "><input type="submit" class="btn btn-outline-light mt-4"></div>
            </form>
        </div>
    </div>
</div>
@endsection
