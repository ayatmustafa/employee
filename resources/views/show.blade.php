@extends('layouts.app')
@section('title')
    {{$employee->name}} data
@endsection

@section('content')
<div class="container">
  <div class="row text-center">
      @if(Session()->has('message'))
      <p class="alert alert-info w-100 text-center">{{ Session()->get('message') }}</p>
      @endif
  </div>
    <div class="row pt-5">
        <div class="col-md-6 offset-md-3 text-capitalize">
            <div class="card bg-dark text-white">
              <img class="card-img img-fluid" src="{{asset("images/".$employee->img)}}" alt="">
              <div class="card-img-overlay">
                <h4 class="card-title">name : {{$employee->name}}</h4>
                <h4 class="card-title">position : {{$employee->position}}</h4>
                <p class="card-text"> join date : {{$employee->join_date}}</p>
                <p class="card-text">about : {{$employee->about}}</p>
                <a href="{{url('employee/edit',$employee->id)}}" class="btn btn-outline-light"> update </a>
                <a onclick="return confirm('Are you sure?')" href="{{url('employee/delete',$employee->id)}}" class="btn btn-outline-light"> delete </a>

              </div>
            </div>
        </div>
    </div>
</div>
@endsection
