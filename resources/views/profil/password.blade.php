@extends('layout.app')

@section('extra-css')
    <!-- MATERIAL DESIGN ICONIC FONT -->
    <link rel="stylesheet"
        href="{{ asset('connexion/fonts/material-design-iconic-font/css/material-design-iconic-font.min.css') }}">

    <!-- STYLE CSS -->
    <link rel="stylesheet" href="{{ asset('connexion/css/style.css') }}">
    {{-- <link href="{{ asset('assets/img/logoi.png') }}" rel="icon">
    <link href="{{ asset('assets/img/logoi.png') }}" rel="apple-touch-icon"> --}}
@endsection

@section('content')
    <main id="main">

        <!-- ======= Breadcrumbs ======= -->
        <div class="breadcrumbs d-flex align-items-center"
            style="background-image: url('{{ asset('assets/img/breadcrumbs-bg.jpg') }}');">
            <div class="container position-relative d-flex flex-column align-items-center" data-aos="fade">

                <h2>Mise à jour du mot de passe</h2>
                <ol>
                    <li><a href="/">Accueil</a></li>
                    <li>Mise à jour du mot de passe</li>
                </ol>

            </div>
        </div><!-- End Breadcrumbs -->
        <div class="wrapper"
            style="background-image: url('{{ asset('images/bg-registration-form-2.jpg') }}'); background-size: cover; background-repeat: no-repeat">
            <div class="inner">

                <form action="{{ route('user-password.update') }}" method="POST">
                    @csrf
                    @method('PUT')
                    <h3>Modifiez votre mot de passe</h3>
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            <strong>Profil modifié avec succès !</strong>
                        </div>
                    @endif

                    <div class="form-group">
                        <div class="form-wrapper">
                            <label for="">Mot de passe</label>
                            <input type="password" name="current_password"
                                class="form-control @error('current_password') is-invalid @enderror">
                            @error('current_password')
                                <span class="text-danger">
                                    {{ $message }}
                                </span>
                            @enderror
                        </div>
                        <div class="form-wrapper">
                            <label for="">Nouveau mot de passe</label>
                            <input type="password" name="password"
                                class="form-control @error('password') is-invalid @enderror">
                            @error('password')
                                <span class="text-danger">
                                    {{ $message }}
                                </span>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="form-wrapper">
                            <label for="">Confirmer le mot de passe</label>
                            <input type="password" name="password_confirmation" class="form-control"
                                id="password_confirmation">
                            @error('password_confirmation')
                                <span class="text-danger">
                                    {{ $message }}
                                </span>
                            @enderror
                        </div>
                    </div>

                    <button type="submit">Enrégistrez</button>

                </form>
            </div>
        </div>
    </main><!-- End #main -->
@endsection
