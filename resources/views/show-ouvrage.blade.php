@extends('layout.app')

@section('content')
    <main id="main">
        <!-- ======= Breadcrumbs ======= -->
        <div class="breadcrumbs d-flex align-items-center"
            style="background-image: url('{{ asset('assets/img/Des-livres-incontournables-600x200.jpg') }}');">
            <div class="container position-relative d-flex flex-column align-items-center" data-aos="fade">

                <h2>Détails de l'ouvrage</h2>
                <ol>
                    <li><a href="/">Accueil</a></li>
                    <li>Détails de l'ouvrage</li>
                </ol>

            </div>
        </div><!-- End Breadcrumbs -->

        <!-- ======= Blog Details Section ======= -->
        <section id="blog" class="blog">
            <div class="container" data-aos="fade-up" data-aos-delay="100">

                <div class="row g-5">

                    <div class="col-lg-8">

                        <article class="blog-details">

                            <div class="post-img">
                                <img src="{{ asset('storage/' . $ouvrage->image) }}" alt="" class="img-fluid"
                                    style="width: 100%; height: 550px;">
                            </div>

                            <div class="row">
                                <div class="col-10">
                                    <h2 class="title">
                                        {{ $ouvrage->titre }}
                                    </h2>
                                </div>
                                <div class="col-2 pt-3">
                                    @auth
                                        @livewire('form-like', [
                                            'ouvrage' => $ouvrage,
                                            'recup_id' => $ouvrage->id,
                                        ])
                                    @endauth
                                </div>
                            </div>
                            {{-- <button class="btn btn-primary"><i class="bi bi-heart"></i></button> --}}


                            {{-- <button class="btn btn-primary"><i class="fa fa-heart"></i></button>
                            <button class="btn btn-primary"><i class="fa fa-heart-circle-check"></i></button> --}}

                            <div class="meta-top">
                                <ul>
                                    {{-- <li class="d-flex align-items-center"><i class="bi bi-person"></i> <a
                                            href="blog-details.html">{{ $ouvrage->name }}</a></li> --}}
                                    <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a
                                            href="#"><time
                                                datetime="2020-01-01">{{ $ouvrage->created_at->format('d/m/Y') }}</time></a>
                                    </li>
                                    <li class="d-flex align-items-center"><i class="bi bi-eye"></i> <a
                                            href="blog-details.html">{{ number_format($count_ouvrage->total, 0, ',', '.') }}
                                            vue(s)</a></li>
                                </ul>
                            </div><!-- End meta top -->

                            <div class="content mb-4">
                                {!! $ouvrage->description !!}
                            </div><!-- End post content -->

                            <div class="meta-bottom">
                                <i class="bi bi-download"></i>
                                @php
                                    $pdf = json_decode($ouvrage->pdf);
                                    //dd($video[0]->download_link);
                                @endphp
                                <ul class="cats">
                                    <li><a target="_blank" rel="noopener noreferrer"
                                            href="{{ asset('storage/' . $pdf[0]->download_link ?? '') }}">Télécharger</a>
                                    </li>
                                </ul>

                                {{-- <i class="bi bi-tags"></i>
                                <ul class="tags">
                                    <li><a href="#">Creative</a></li>
                                    <li><a href="#">Tips</a></li>
                                    <li><a href="#">Marketing</a></li>
                                </ul> --}}
                            </div><!-- End meta bottom -->

                        </article><!-- End blog post -->



                    </div>

                    <div class="col-lg-4">

                        @livewire('search-ouvrage')

                    </div>
                </div>

            </div>
        </section><!-- End Blog Details Section -->
    </main>
@endsection
