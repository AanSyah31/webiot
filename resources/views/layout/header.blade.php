<?php
 session_start();
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AWS DASHBOARD</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="{{ asset('public/img/CBI-logo.png') }}">
    <link rel="stylesheet" href="{{ asset('public/plugins/fontawesome-free/css/all.min.css') }}">
    <link rel="stylesheet" href="{{ asset('public/css/ionicons.min.css') }}">
    <link rel="stylesheet" href="{{ asset('public/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('public/plugins/datatables-responsive/css/responsive.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('public/css/adminlte.min.css') }}">
    <link rel="stylesheet" href="{{ asset('public/css/jquery.fancybox.min.css') }}">
    <link rel="stylesheet" href="{{ asset('public/plugins/select2/css/select2.min.css')}}">
    <link rel="stylesheet" href="{{ asset('public/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css') }}">


    <!--download-->
    <link href="{{ asset('public/css/css.css') }}" rel="stylesheet">    
    
    <!--download-->
    <script type="text/javascript" src="{{ asset('public/js/loader.js') }}"></script>

    <!--download-->
    <link rel="stylesheet" type="text/css" href="{{ asset('public/css/buttons.dataTables.min.css') }}" />
     <!--download-->
    <link rel="stylesheet" type="text/css" href="{{ asset('public/css/jquery.dataTables.min.css') }}" />


    <style type="text/css">
        .center {
          margin: auto;
          height: 500px;
          width: 70%;
          padding: 10px;
          text-align: center;
        }

        .tengah {
            vertical-align: middle;
        }

        .hijau{
            background-color: #00621A;
            color: white;
        }

        .biru{
            background-color: #001494;
            color: white;
        }    
        .merah{
            background-color: red;
            color: red;
        }
    </style>

</head>

<body class="hold-transition sidebar-mini sidebar-collapse layout-fixed layout-navbar-fixed">
    <div class="wrapper">
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="hover"><i class="fas fa-bars"></i></a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a class="nav-link">Selamat datang!</a>
                </li>
            </ul>

            <ul class="navbar-nav ml-auto">
                <li class="nav-item d-none d-sm-inline-block">
                    <a class="nav-link"></a>
                </li>
            </ul>
        </nav>
        <aside class="main-sidebar sidebar-light-primary elevation-4">
            <a href="{{ url('/') }}" class="brand-link">
                <img src="{{ asset('public/img/CBI-logo.png') }}" alt="Covid Tracker" class="brand-image img-circle elevation-3"
                    style="opacity: .8">
                <span class="brand-text font-weight-light">AWS</span>
            </a>
            <div class="sidebar">
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                        data-accordion="false">
                        <!-- USER LAB -->

                        <!-- TABEL -->
                        <li class="nav-item">                            
                            <a href="{{ url('/') }}" class="nav-link">
                                <i class="nav-icon fa fa-tachometer-alt"></i>
                                <p>
                                    Dashboard
                                </p>
                            </a>
                        </li> 

                        <!-- TABEL -->
                        <li class="nav-item">                            
                            <a href="{{ url('/grafik') }}" class="nav-link">
                                <i class="nav-icon fa fa-chart-area"></i>
                                <p>
                                    Grafik
                                </p>
                            </a>
                        </li> 

                        <!-- GRAFIK -->
                        <li class="nav-item">                            
                            <a href="{{ url('/tabel') }}" class="nav-link">
                                <i class="nav-icon fa fa-table"></i>
                                <p>
                                    Tabel
                                </p>
                            </a>
                        </li> 
                    </ul>                    
                </nav>
            </div>
        </aside>