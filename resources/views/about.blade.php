@extends('layout.app')

@section('content')
    <main id="main">

        <!-- ======= Breadcrumbs ======= -->
        <div class="breadcrumbs d-flex align-items-center"
            style="background-image: url('{{ asset('assets/img/tech.jpg') }}');">
            <div class="container position-relative d-flex flex-column align-items-center" data-aos="fade">

                <h2>A propos de nous</h2>
                <ol>
                    <li><a href="/">Accueil</a></li>
                    <li>A popos de nous</li>
                </ol>

            </div>
        </div><!-- End Breadcrumbs -->

        <!-- ======= About Section ======= -->
        <section id="about" class="about">
            <div class="container" data-aos="fade-up">

                <div class="row position-relative">

                    <div class="col-lg-7 about-img" style="background-image: url({{ asset('assets/img/salle.jpg') }});">
                    </div>

                    <div class="col-lg-7">
                        <h2>C'est quoi {{ config('app.name') }} ?</h2>
                        <div class="our-story">
                            <!-- <h4>Est 1988</h4>-->
                            <h3>Notre histoire</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos optio illo quod iusto,
                                necessitatibus laboriosam. Reiciendis sapiente quis doloremque dignissimos rem? Voluptatibus
                                dolorum quod cumque velit id! Incidunt, fuga iure?</p>
                            <!--<ul>
                        <li><i class="bi bi-check-circle"></i> <span>Ullamco laboris nisi ut aliquip ex ea commo</span></li>
                        <li><i class="bi bi-check-circle"></i> <span>Duis aute irure dolor in reprehenderit in</span></li>
                        <li><i class="bi bi-check-circle"></i> <span>Ullamco laboris nisi ut aliquip ex ea</span></li>
                      </ul>-->
                            <p>
                                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Itaque minima consequuntur amet
                                blanditiis, neque nisi consectetur, illo laudantium earum nulla sequi ab nihil, esse optio
                                beatae. Laudantium tenetur aperiam natus.
                            </p>
                            <p>
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga, minima! Quia harum architecto
                                itaque molestias? Incidunt reiciendis inventore facilis vitae, accusantium accusamus ducimus
                                necessitatibus totam, porro consequuntur illum, sed aperiam.
                            </p>
                            <p>
                                Lorem ipsum dolor sit amet consectetur, adipisicing elit. Commodi, libero quas. Et quos
                                itaque repellendus possimus sequi ut consequatur soluta, totam optio provident voluptate
                                sunt eligendi facere exercitationem voluptatem quam?
                            </p>
                            <h4 class="text-center text-justify">
                                La DIGITALISATION se doit ??tre une d??marche incontournable au coeur de votre organisation.
                                Toutefois ce processus impose d'avoir une v??ritable Identit?? Num??rique. Dot??e d'une forte
                                expertise {{ config('app.name') }} Congo vous accompagne dans sa construction.
                            </h4>
                            <!-- <div class="watch-video d-flex align-items-center position-relative">
                        <i class="bi bi-play-circle"></i>
                        <a href="https://www.youtube.com/watch?v=LXb3EKWsInQ" class="glightbox stretched-link">Watch Video</a>
                      </div>-->
                        </div>
                    </div>

                </div>

            </div>
        </section>
        <!-- End About Section -->

        <!-- ======= Stats Counter Section ======= -->
        <!--<section id="stats-counter" class="stats-counter section-bg">
              <div class="container">

                <div class="row gy-4">

                  <div class="col-lg-3 col-md-6">
                    <div class="stats-item d-flex align-items-center w-100 h-100">
                      <i class="bi bi-emoji-smile color-blue flex-shrink-0"></i>
                      <div>
                        <span data-purecounter-start="0" data-purecounter-end="232" data-purecounter-duration="1" class="purecounter"></span>
                        <p>Happy Clients</p>
                      </div>
                    </div>
                  </div>-->
        <!-- End Stats Item -->

        <!--  <div class="col-lg-3 col-md-6">
                    <div class="stats-item d-flex align-items-center w-100 h-100">
                      <i class="bi bi-journal-richtext color-orange flex-shrink-0"></i>
                      <div>
                        <span data-purecounter-start="0" data-purecounter-end="521" data-purecounter-duration="1" class="purecounter"></span>
                        <p>Projects</p>
                      </div>
                    </div>
                  </div>-->
        <!-- End Stats Item -->

        <!--<div class="col-lg-3 col-md-6">
                    <div class="stats-item d-flex align-items-center w-100 h-100">
                      <i class="bi bi-headset color-green flex-shrink-0"></i>
                      <div>
                        <span data-purecounter-start="0" data-purecounter-end="1463" data-purecounter-duration="1" class="purecounter"></span>
                        <p>Hours Of Support</p>
                      </div>
                    </div>
                  </div> -->
        <!-- End Stats Item -->

        <!--<div class="col-lg-3 col-md-6">
                    <div class="stats-item d-flex align-items-center w-100 h-100">
                      <i class="bi bi-people color-pink flex-shrink-0"></i>
                      <div>
                        <span data-purecounter-start="0" data-purecounter-end="15" data-purecounter-duration="1" class="purecounter"></span>
                        <p>Hard Workers</p>
                      </div>
                    </div>
                  </div>-->
        <!-- End Stats Item -->

        <!--</div>

              </div>
            </section><!--<!-- End Stats Counter Section -->

        <!-- ======= Alt Services Section ======= -->
        <!-- End Alt Services Section 2 -->

        <!-- ======= Our Team Section ======= -->
        <!--<section id="team" class="team">
              <div class="container" data-aos="fade-up">

                <div class="section-header">
                  <h2>Our Team</h2>
                  <p>Aperiam dolorum et et wuia molestias qui eveniet numquam nihil porro incidunt dolores placeat sunt id nobis omnis tiledo stran delop</p>
                </div>

                <div class="row gy-5">

                  <div class="col-lg-4 col-md-6 member" data-aos="fade-up" data-aos-delay="100">
                    <div class="member-img">
                      <img src="assets/img/team/team-1.jpg" class="img-fluid" alt="">
                      <div class="social">
                        <a href="#"><i class="bi bi-twitter"></i></a>
                        <a href="#"><i class="bi bi-facebook"></i></a>
                        <a href="#"><i class="bi bi-instagram"></i></a>
                        <a href="#"><i class="bi bi-linkedin"></i></a>
                      </div>
                    </div>
                    <div class="member-info text-center">
                      <h4>Walter White</h4>
                      <span>Chief Executive Officer</span>
                      <p>Aliquam iure quaerat voluptatem praesentium possimus unde laudantium vel dolorum distinctio dire flow</p>
                    </div>
                  </div>-->
        <!-- End Team Member -->

        <!--<div class="col-lg-4 col-md-6 member" data-aos="fade-up" data-aos-delay="200">
                    <div class="member-img">
                      <img src="assets/img/team/team-2.jpg" class="img-fluid" alt="">
                      <div class="social">
                        <a href="#"><i class="bi bi-twitter"></i></a>
                        <a href="#"><i class="bi bi-facebook"></i></a>
                        <a href="#"><i class="bi bi-instagram"></i></a>
                        <a href="#"><i class="bi bi-linkedin"></i></a>
                      </div>
                    </div>
                    <div class="member-info text-center">
                      <h4>Sarah Jhonson</h4>
                      <span>Product Manager</span>
                      <p>Labore ipsam sit consequatur exercitationem rerum laboriosam laudantium aut quod dolores exercitationem ut</p>
                    </div>
                  </div>-->
        <!-- End Team Member -->

        <!--<div class="col-lg-4 col-md-6 member" data-aos="fade-up" data-aos-delay="300">
                    <div class="member-img">
                      <img src="assets/img/team/team-3.jpg" class="img-fluid" alt="">
                      <div class="social">
                        <a href="#"><i class="bi bi-twitter"></i></a>
                        <a href="#"><i class="bi bi-facebook"></i></a>
                        <a href="#"><i class="bi bi-instagram"></i></a>
                        <a href="#"><i class="bi bi-linkedin"></i></a>
                      </div>
                    </div>
                    <div class="member-info text-center">
                      <h4>William Anderson</h4>
                      <span>CTO</span>
                      <p>Illum minima ea autem doloremque ipsum quidem quas aspernatur modi ut praesentium vel tque sed facilis at qui</p>
                    </div>
                  </div> -->
        <!-- End Team Member -->

        <!--<div class="col-lg-4 col-md-6 member" data-aos="fade-up" data-aos-delay="400">
                    <div class="member-img">
                      <img src="assets/img/team/team-4.jpg" class="img-fluid" alt="">
                      <div class="social">
                        <a href="#"><i class="bi bi-twitter"></i></a>
                        <a href="#"><i class="bi bi-facebook"></i></a>
                        <a href="#"><i class="bi bi-instagram"></i></a>
                        <a href="#"><i class="bi bi-linkedin"></i></a>
                      </div>
                    </div>
                    <div class="member-info text-center">
                      <h4>Amanda Jepson</h4>
                      <span>Accountant</span>
                      <p>Magni voluptatem accusamus assumenda cum nisi aut qui dolorem voluptate sed et veniam quasi quam consectetur</p>
                    </div>
                  </div>-->
        <!-- End Team Member -->

        <!--<div class="col-lg-4 col-md-6 member" data-aos="fade-up" data-aos-delay="500">
                    <div class="member-img">
                      <img src="assets/img/team/team-5.jpg" class="img-fluid" alt="">
                      <div class="social">
                        <a href="#"><i class="bi bi-twitter"></i></a>
                        <a href="#"><i class="bi bi-facebook"></i></a>
                        <a href="#"><i class="bi bi-instagram"></i></a>
                        <a href="#"><i class="bi bi-linkedin"></i></a>
                      </div>
                    </div>
                    <div class="member-info text-center">
                      <h4>Brian Doe</h4>
                      <span>Marketing</span>
                      <p>Qui consequuntur quos accusamus magnam quo est molestiae eius laboriosam sunt doloribus quia impedit laborum velit</p>
                    </div>
                  </div>-->
        <!-- End Team Member -->

        <!--<div class="col-lg-4 col-md-6 member" data-aos="fade-up" data-aos-delay="600">
                    <div class="member-img">
                      <img src="assets/img/team/team-6.jpg" class="img-fluid" alt="">
                      <div class="social">
                        <a href="#"><i class="bi bi-twitter"></i></a>
                        <a href="#"><i class="bi bi-facebook"></i></a>
                        <a href="#"><i class="bi bi-instagram"></i></a>
                        <a href="#"><i class="bi bi-linkedin"></i></a>
                      </div>
                    </div>
                    <div class="member-info text-center">
                      <h4>Josepha Palas</h4>
                      <span>Operation</span>
                      <p>Sint sint eveniet explicabo amet consequatur nesciunt error enim rerum earum et omnis fugit eligendi cupiditate vel</p>
                    </div>
                  </div>-->
        <!-- End Team Member -->

        <!--  </div>

              </div>
            </section>End Our Team Section -->

        <!-- ======= Testimonials Section ======= -->
        <!-- End Testimonials Section -->

    </main><!-- End #main -->
@endsection
