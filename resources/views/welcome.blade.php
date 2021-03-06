<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #1dacbb;
                font-family: 'Raleway', sans-serif;
                font-weight: 100;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 60px;font-weight:bold;
            }

            .links > a  {
                color: #636b6f;
                padding: 0 25px;
                font-size: 12px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 20px;
            }
            .ae:hover{
                color:red;
            }
            div.sub-title >h1> a{
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div class="flex-center position-ref full-height">
            @if (Route::has('login'))
                <div class="top-right links">
                    @if (Auth::check())
                        <a href="{{ url('/home') }}" class="ae">Home</a>
                    @else
                        <a href="{{ url('/login') }}" class="ae">Login</a>
                        <a href="{{ url('/register') }}" class="ae">Register</a>
                    @endif
                </div>
            @endif

            <div class="content">
                <div class="title m-b-md">
                    <span style="font-size:80px;">R</span>ESTBlog
                </div>
                <div class="sub-title">
                    <h1> <a href="https://laravel.com/" title="laravel.com"> Laravel 5.6</a> | CRUD API | <a href="https://vuejs.org/"  title="vuejs.org">Vuejs</a> | Blog</h1>
                        <h3 class="txt-primary">
                            Designed By: <a href="https://github.com/Sdhungana" target="_blank" title="github.com/Sdhungana">Sulab Dhungana</a> 
                        </h3>
                </div>
            </div>
        </div>
    </body>
</html>
