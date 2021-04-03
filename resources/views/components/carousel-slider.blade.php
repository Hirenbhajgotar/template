<div>
    <section id="hero">
        <div id="heroCarousel" class="carousel slide carousel-fade" data-ride="carousel">
            <div class="carousel-inner" role="listbox">
                <input type="text">
                @php
                $banner_i = 1;
                @endphp
                @foreach($banners as $banner)

                <!-- Slide 1 -->
                <div class="carousel-item {{$banner_i == 1 ? 'active' : ''}}" style="background-image: url({{ env('STORAGE_DIR') . env('BANNER_DIR') . $banner->image }});">
                    <div class="carousel-container">
                        <div class="carousel-content animate__animated animate__fadeInUp">
                            @if($banner->title)
                            <h2>{{$banner->title}}</h2>
                            @endif
                            @if($banner->description)
                            {{strip_tags($banner->description)}}
                            {{--<div class="text-center"><a href="" class="btn-get-started">Read More</a></div>--}}
                            @endif
                        </div>
                    </div>
                </div>
                @php $banner_i++ @endphp
                @endforeach
            </div>

            <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon icofont-simple-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>

            <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon icofont-simple-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>

            <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

        </div>
    </section><!-- End Hero -->
</div>