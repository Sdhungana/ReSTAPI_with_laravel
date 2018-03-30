@extends('layouts.app')

@section('content')

<div id="app">
 
    <div class="container">
        <articles>

        </articles>
        <div class="text-center">
            Copyright &copy; | 2018 | Designed By: 
            <a href="github.com/Sdhungana">{{Auth::user()->name}}</a>
        </div>
    </div>
</div>
@endsection
