@extends('layout.app')

@section('content')
    <main id="main">

        <!-- ======= Breadcrumbs ======= -->
        <div class="breadcrumbs d-flex align-items-center"
            style="background-image: url('{{ asset('assets/img/Des-livres-incontournables-600x200.jpg') }}');">
            <div class="container position-relative d-flex flex-column align-items-center" data-aos="fade">

                <h2>Mes favoris</h2>
                <ol>
                    <li><a href="/">Accueil</a></li>
                    <li>Mes favoris</li>
                </ol>

            </div>
        </div><!-- End Breadcrumbs -->

        <!-- ======= Blog Section ======= -->
        <section id="blog" class="blog">
            <div class="container" data-aos="fade-up" data-aos-delay="100">

                

                    

                    

                    @livewire('my-likes')


        </section>
        <!-- End Blog Section -->
    </main><!-- End #main -->
@endsection
