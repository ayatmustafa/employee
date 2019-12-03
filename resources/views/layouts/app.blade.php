<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">


    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="{{asset('assets\css\bootstrap.min.css') }}" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{asset('assets\css\style.css') }}" rel="stylesheet">


    <title>@yield('title')</title>
</head>
<body  class="bg-dark">
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-dark shadow-sm bg-danger text-capitalize">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    em
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item ">
                                <a class="nav-link" href="{{url("/")}}">employees </a>
                            </li>
                            @if(Auth::user())
                            <li class="nav-item">
                                <a class="nav-link" href="{{url("employee/create")}}">add employee</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="{{url("employee/destroy")}}">delete more than one employee</a>
                            </li>
                            @endif
                </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <li>
                                <form class="form-inline " method="POST" action="{{url("/employee/search/")}}">
                                    @csrf
                                    <input id="searchkey" onkeyup="searchmethod()" class="form-control mr-sm-2" type="text" placeholder="Search" name="string">
                                    <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
                                </form>
                        </li>
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>


        <main class="py-4" >
            @yield('content')
        </main>
    </div>
    <script>
    function searchmethod(){
var searchkey=$('#searchkey');
var res=searchkey.val();
var url= '{{url("/employee/search")}}';
console.log(url+'/'+res);
//console.log(searchkey.val());
if (res.length == 0) {
    document.getElementById("searchresult").innerHTML = "";
    return;
  } else {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("searchresult").innerHTML = this.responseText;
      }
    };
    xmlhttp.open("GET",url+'/'+res, true);
    xmlhttp.send();
  }
    }
    </script>
    <script src="{{asset('assets\js\popper.min.js') }}"></Script>
        <script src="{{asset('assets\js\jquery-3.3.1.js') }}"></Script>
        <script src="{{asset('assets\js\bootstrap.min.js') }}"></Script>
</body>
</html>
