<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="{{asset('assets\css\bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{asset('assets\css\style.css') }}" rel="stylesheet">

    <title>@yield('title')</title>
</head>
<body class="bg-dark text-light">
    <nav class="navbar navbar-expand-sm navbar-dark bg-danger text-capitalize">
        <a class="navbar-brand text-uppercase" href="/">em</a>
        <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse"
         data-target="#collapsibleNavId" aria-controls="collapsibleNavId"
            aria-expanded="false" aria-label="Toggle navigation"></button>
        <div class="collapse navbar-collapse" id="collapsibleNavId">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
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
            @if(Auth::user())
            <ul class="my-2 my-lg-0 navbar-nav">
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

            @endif
            <li>
                <form class="form-inline " method="POST" action="{{url("/employee/search/")}}">
                    @csrf
                    <input class="form-control mr-sm-2" type="text" placeholder="Search" name="string">
                    <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
                </form>
        </li>
</ul>

        </div>
    </nav>

    @yield("content")
    <script src="{{asset('assets\js\popper.min.js') }}"></Script>
    <script src="{{asset('assets\js\jquery-3.3.1.js') }}"></Script>
    <script src="{{asset('assets\js\bootstrap.min.js') }}"></Script>
</body>
</html>
