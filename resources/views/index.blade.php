@extends('layouts.app')
@section('title')
    all employee
@endsection

@section('content')
<div class="container mt-4">
  <div class="row">

      @if(Session()->has('message'))
      <p class="alert alert-info">{{ Session()->get('message') }}</p>
      @endif
  </div>
    <div class="row main">
        @foreach ($employee as $emp )
        <div class="col-md-4 my-4" >
            <div class="item-box-blog">
              <div class="item-box-blog-image">
                <!--Date-->
                <div class="item-box-blog-date bg-blue-ui text-dark"> <span class="mon"> {{date('F d', strtotime($emp->join_date))}}</span> </div>
                <!--Image-->
                <figure> <img alt="" src="{{asset("images/".$emp->img)}}"> </figure>
              </div>
              <div class="item-box-blog-body">
                <!--Heading-->
                <div class="item-box-blog-heading">
                  <a href="#" tabindex="0">
                    <h5>{{$emp->name}}</h5>
                  </a>
                </div>
                <!--Data-->
                <div class="item-box-blog-data text-capitalize" style="padding: px 15px;">
                  <p> {{$emp->position}}</p>
                  <p> join date : {{$emp->join_date}}</p>
                </div>
                <!--Text-->
                <div class="item-box-blog-text">
                  <p> {{ str_limit($emp->about ,'130') }}</p>
                </div>
                <div class="mt"> <a href="{{url("employee/show",$emp->id)}}" tabindex="0" class="btn bg-blue-ui white read">read more</a> </div>
                <!--Read More Button-->
              </div>
            </div>
          </div>


        @endforeach
    </div>
    <div class="row">
      <div class="col-12 text-center d-flex justify-content-center align-items-center">

        {!!$employee->links()!!}
      </div>
    </div>
</div>


@endsection
