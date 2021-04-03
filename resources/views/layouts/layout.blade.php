<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Service One Step</title>
    <meta content="" name="descriptison">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="{{ asset('asset/img/favicon.png') }} " rel="icon">
    <link href="{{ asset('asset/img/apple-touch-icon.png') }} " rel="apple-touch-icon">

    {{-- Materialize Icon --}}
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    {{-- Remix icon --}}
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">

    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:ital,wght@0,200;0,400;0,600;0,700;1,400&display=swap"
        rel="stylesheet">


    <!-- Vendor CSS Files -->
    <link href="{{ asset('asset/frontend/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('asset/frontend/vendor/icofont/icofont.min.css') }} " rel="stylesheet">
    <link href="{{ asset('asset/frontend/vendor/boxicons/css/boxicons.min.css') }} " rel="stylesheet">
    <link href="{{ asset('asset/frontend/vendor/animate.css/animate.min.css') }} " rel="stylesheet">
    <link href="{{ asset('asset/frontend/vendor/venobox/venobox.css') }} " rel="stylesheet">
    <link href="{{ asset('asset/frontend/vendor/owl.carousel/assets/owl.carousel.min.css') }} " rel="stylesheet">
    <link href="{{ asset('asset/frontend/vendor/aos/aos.css') }} " rel="stylesheet">
    <link href="{{ asset('asset/frontend/vendor/remixicon/remixicon.css') }} " rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="{{ asset('asset/frontend/css/style.css') }} " rel="stylesheet">
    <link href="{{ asset('asset/frontend/css/custome.css') }} " rel="stylesheet">

    <!-- =======================================================
  * Template Name: Company - v2.1.0
  * Template URL: https://bootstrapmade.com/company-free-html-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

<style>
    .form-inline #search_btn {
        float: left !important;
        border-top-left-radius: 0 !important;
        border-bottom-left-radius: 0 !important;
        background: #e8fcf1 !important;
        border-color: #bbf6d5 !important;
        color: #18ba60 !important;
    }
    #search_btn:hover{
        background: #bbf6d5 !important;
    }
    .form-inline #search_input {
        width: 360px !important;
        /* float: left; */
        margin-right: 0 !important;
        border-top-right-radius: 0 !important;
        border-bottom-right-radius: 0 !important;
        border-color: #bbf6d5 !important;
    }
    #search_input:focus {
        outline: none !important;
        outline-style: none !important;
        box-shadow: none !important;
        border-color: #8ef0ba !important;
    }
</style>
</head>

<body >
    <x-toast />

    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top">
        <div class="container d-flex align-items-center">

            {{-- <h1 class="logo mr-auto"><a href="index.html"><span>Com</span>pany</a></h1> --}}
            <h1 class="logo mr-auto"><a href="/"><span>{{ config('app.name', 'Laravel') }}</span></a></h1>
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

            <nav class="nav-menu d-none d-lg-block">
                <ul class="align-items-center">
                    <li>
                        <form class="form-inline">
                            <input type="text" style="width: 360px;" class="form-control mr-sm-1" id="search_input" placeholder="Find Your Services">
                            <button type="submit" id="search_btn" class="btn"><i class='bx bx-search'></i></button>
                        </form>
                    </li>
                    {{-- <li class="active"><a href="index.html">Home</a></li> --}}
                    <li class="drop-down">
                        <a href="services.html">Services</a>
                        <ul>
                            <li><a href="about.html">About Us</a></li>
                            <li><a href="team.html">Team</a></li>
                            <li><a href="testimonials.html">Testimonials</a></li>
                            <li class="drop-down"><a href="#">Deep Drop Down</a>
                                <ul>
                                    <li><a href="#">Deep Drop Down 1</a></li>
                                    <li><a href="#">Deep Drop Down 2</a></li>
                                    <li><a href="#">Deep Drop Down 3</a></li>
                                    <li><a href="#">Deep Drop Down 4</a></li>
                                    <li><a href="#">Deep Drop Down 5</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="drop-down">
                        <a href="javascript:void(0)">More</a>
                        <ul>
                            <li><a href=""><i class="v-align-b ri-user-heart-fill"></i> Become a Seller</a></li>
                            <li><a href="{{ route('feedback') }} "><i class="v-align-b ri-draft-fill"></i> Share your Feedback</a></li>
                            <li><a href="#"><i class="v-align-b ri-flag-fill"></i> FAQ</a></li>
                            <li><a href="javascript:void(0)">
                                    <i class="v-align-b ri-mail-send-fill"></i> <b>Email us on</b>: customercate@indiasels.com        
                                </a>
                            </li>
                        </ul>
                    </li>
                    {{-- <li><a href="contact.html">Contact</a></li> --}}
                </ul>
            </nav><!-- .nav-menu -->

            <div class="header-social-links">
                <!-- Authentication Links -->
                @guest
                {{-- <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a> --}}
                <a class="nav-link text-uppercase font-size-13 font-weight-bold" href="javascript:void(0)" data-toggle="modal" data-target="#loginModal">{{ __('Login') }}</a>
                @if (Route::has('register'))
                <a class="nav-link text-uppercase font-size-13 font-weight-bold" href="{{ route('register') }}">{{ __('Register') }}</a>
                @endif
                @else
                <nav class="nav-menu d-none d-lg-block">
                    <ul>
                        <li class="drop-down">
                            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false" v-pre>
                                {{ Auth::user()->name }} 
                            </a>
                            <ul>
                            <li><a style="padding: 20px 20px;" href="#" class="dropdwon-item"><i class='bx bxs-user'></i>&nbsp; My Account</a></li>
                                <li>
                                    <a class="dropdown-item" style="padding: 20px 20px;" href="{{ route('logout') }}"
                                        onclick="event.preventDefault();
                                        document.getElementById('logout-form').submit();">
                                        <i class='bx bx-log-out-circle'></i>&nbsp; {{ __('Logout') }}
                                    </a>
                                </li>
                        
                                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                    @csrf
                                </form>
                            </ul>
                        </li>
                    </ul>
                </nav>
                @endguest
                {{-- <a href="#">LOGIN</a> --}}
                {{-- <a href="#" class="twitter"><i class="icofont-twitter"></i></a>
                <a href="#" class="facebook"><i class="icofont-facebook"></i></a>
                <a href="#" class="instagram"><i class="icofont-instagram"></i></a>
                <a href="#" class="linkedin"><i class="icofont-linkedin"></i></i></a> --}}
            </div>

        </div>
    </header><!-- End Header -->


    <main id="main">
        @yield('content')
    </main><!-- End #main -->
    
   
    <!-- ======= Footer ======= -->
    <footer id="footer">

        <div class="footer-top">
            <div class="container">
                <div class="row">

                    <div class="col-lg-3 col-md-6 footer-contact">
                        <h3>Company</h3>
                        <p>
                            A108 Adam Street <br>
                            New York, NY 535022<br>
                            United States <br><br>
                            <strong>Phone:</strong> +1 5589 55488 55<br>
                            <strong>Email:</strong> info@example.com<br>
                        </p>
                    </div>

                    <div class="col-lg-2 col-md-6 footer-links">
                        <h4>Useful Links</h4>
                        <ul>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-3 col-md-6 footer-links">
                        <h4>Our Services</h4>
                        <ul>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-4 col-md-6 footer-newsletter">
                        <h4>Join Our Newsletter</h4>
                        <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
                        <form action="" method="post">
                            <input type="email" name="email"><input type="submit" value="Subscribe">
                        </form>
                    </div>

                </div>
            </div>
        </div>

        <div class="container d-md-flex py-4">

            <div class="mr-md-auto text-center text-md-left">
                <div class="copyright">
                    &copy; Copyright <strong><span>Company</span></strong>. All Rights Reserved
                </div>
                <div class="credits">
                    <!-- All the links in the footer should remain intact. -->
                    <!-- You can delete the links only if you purchased the pro version. -->
                    <!-- Licensing information: https://bootstrapmade.com/license/ -->
                    <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/company-free-html-bootstrap-template/ -->
                    Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                </div>
            </div>
            <div class="social-links text-center text-md-right pt-3 pt-md-0">
                <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
            </div>
        </div>
    </footer><!-- End Footer -->

    

    <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

   {{-- Login Modal --}}
    {{--<x-loginModal />--}}

    <!-- Vendor JS Files -->
    {{-- <script src="{{ asset('asset/frontend/vendor/jquery/jquery.min.js') }} "></script> --}}
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script src="{{ asset('asset/frontend/vendor/bootstrap/js/bootstrap.bundle.min.js') }} "></script>
    <script src="{{ asset('asset/frontend/vendor/jquery.easing/jquery.easing.min.js') }} "></script>
    <script src="{{ asset('asset/frontend/vendor/php-email-form/validate.js') }} "></script>
    <script src="{{ asset('asset/frontend/vendor/jquery-sticky/jquery.sticky.js') }} "></script>
    <script src="{{ asset('asset/frontend/vendor/isotope-layout/isotope.pkgd.min.js') }} "></script>
    <script src="{{ asset('asset/frontend/vendor/venobox/venobox.min.js') }} "></script>
    <script src="{{ asset('asset/frontend/vendor/waypoints/jquery.waypoints.min.js') }} "></script>
    <script src="{{ asset('asset/frontend/vendor/owl.carousel/owl.carousel.min.js') }} "></script>
    <script src="{{ asset('asset/frontend/vendor/aos/aos.js') }} "></script>

    <!-- Template Main JS File -->
    <script src="{{ asset('asset/frontend/js/main.js') }} "></script>

    <script>
        $(document).ready(function() {
        $('#toast').toast('show');
            // $.toast({
            // title: 'Toast',
            // subtitle: '11 mins ago',
            // content: 'Hello, world! This is a toast message.',
            // type: 'info',
            // delay: 5000
            // });
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
           
        })
    </script>

</body>

</html>