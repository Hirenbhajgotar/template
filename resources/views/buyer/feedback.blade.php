@extends('layouts.layout')

@section('content')

<section id="contact" class="contact mt-5 px-5">
    <div class="container-fluid mt-4">
        <div class="row mb-4">
            {{-- <div class="offset-md-4"></div> --}}
            <div class="col-md-8">
                <div class="section-title">
                    <h2 class="scolor">Feedback</strong></h2>
                    {{-- <h3>Feedback</h3> --}}
                    <p><small>Please use the form below to send us your comments and feedback.</small></p>
                </div>
            </div>
        </div>

        <div class="row " data-aos="fade-up">
            <div class="col-lg-4">
                <img src="{{ asset('assets/img/icons/undraw_feedback_h2ft.svg') }} " class="img-fluid" alt="feedback">
            </div>
            <div class="col-lg-8">
                <x-alert />

                <form action="{{ route('submit_feedback') }} " method="post" role="form" class="forms">
                    @csrf
                    <div class="form-row">
                        <div class="col-md-6 form-group">
                            <label for="feedback_title">Feedback Title</label>
                            <input type="text" value="{{ old('feedback_title') }}" class="form-control" id="feedback_title" name="feedback_title" placeholder="Provide short title of your feedback" autofocus>
                        </div>
                        <div class="col-md-6 form-group">
                            <label for="mobile_number">Mobile Number</label>
                            <input type="text" value="{{ old('mobile_number') }}" class="@error('mobile_number') is-invalid @enderror form-control" id="mobile_number" name="mobile_number" maxlength="10" placeholder="Mobile number">
                            @error('mobile_number')
                            <p class="text-danger">{{ $message }}</p>
                            @enderror
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="feedback_title">Feedback Description</label>
                        <textarea class="@error('feedback_description') is-invalid @enderror form-control" name="feedback_description" id="feedback_description" required rows="5" data-msg="Please write something for us" placeholder="Please write something for us">{{ old('feedback_description') }}</textarea>
                        @error('feedback_description')
                        <p class="text-danger">{{ $message }}</p>
                        @enderror
                    </div>
                    <button type="submit" class="btn btn-dark rounded-lg">
                        SUBMIT FEEDBACK
                    </button>
                </form>
            </div>

        </div>

    </div>
</section><!-- End Contact Section -->
@endsection