<!-- complex-tabs -->
<div class="complex-tabs">
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item">
            <a class="nav-link active"
               id="home-tab"
               data-toggle="tab"
               href="#complex-tabs__description"
               role="tab"
               aria-controls="home"
               aria-selected="true">Описание</a>
        </li>
        <li class="nav-item">
            <a class="nav-link"
               id="profile-tab"
               data-toggle="tab"
               href="#complex-tabs__apartaments"
               role="tab"
               aria-controls="profile"
               aria-selected="false">Апартаменты</a>
        </li>
        <li class="nav-item">
            <a class="nav-link"
               id="contact-tab"
               data-toggle="tab"
               href="#complex-tabs__view-on-map"
               role="tab"
               aria-controls="contact"
               aria-selected="false">На карте</a>
        </li>
    </ul>
    <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active"
             id="complex-tabs__description" role="tabpanel"
             aria-labelledby="description-tab">
            <div class="row">
                <section class="complex-tabs__photos col-lg-5 col-xl-6">
                    <h2>Фото комплекса <small class="text-muted">(10 фото)</small></h2>
                    <div id="carouselExampleControls" class="carousel slide mb-4" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block w-100" src="https://vput.ru/cache/images/realties/1260x710_focus_watermark/02..jpg.jpg" alt="First slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="https://vput.ru/cache/images/realties/1260x710_focus_watermark/02..jpg.jpg" alt="Second slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="https://vput.ru/cache/images/realties/1260x710_focus_watermark/02..jpg.jpg" alt="Third slide">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </section>
                <div class="col-lg-7 col-xl-6">
                    <section class="complex-tabs__description mb-4">
                        <h2>Описание</h2>
                        <p>Студия в собственности в северной части курорта Солнечный берег. Рядом Disco Orange, пляж, кафе, рестораны, остановка автобуса. Площадь студии 30 кв.м. (больше двух человек проблематично поместить). Есть вся мебель, техника, посуда. Бассейн. Пляж в 500-600 м.</p>
                    </section>
                    <section class="complex-tabs__characteristics">
                        <h2>Характеристики</h2>
                        <ul class="complex-tabs__list-of-characteristics row">
                            <li class="col-sm-6">
                                <figure class="figure d-flex">
                                    <i class="icon icon__security mr-3"></i>
                                    <figcaption class="figure-caption">Охрана</figcaption>
                                </figure>
                            </li>
                            <li class="col-sm-6">
                                <figure class="figure d-flex">
                                    <i class="icon icon__coffee mr-3"></i>
                                    <figcaption class="figure-caption">Кафе</figcaption>
                                </figure>
                            </li>
                            <li class="col-sm-6">
                                <figure class="figure d-flex">
                                    <i class="icon icon__parking mr-3"></i>
                                    <figcaption class="figure-caption">Парковка <small class="text-muted">(20 мест)</small></figcaption>
                                </figure>
                            </li>
                            <li class="col-sm-6">
                                <figure class="figure d-flex">
                                    <i class="icon icon__bike mr-3"></i>
                                    <figcaption class="figure-caption">Прокат велосипедов</figcaption>
                                </figure>
                            </li>
                            <li class="col-sm-6">
                                <figure class="figure d-flex">
                                    <i class="icon icon__sea mr-3"></i>
                                    <figcaption class="figure-caption">Доступ к морю <small class="text-muted">(20 метров)</small></figcaption>
                                </figure>
                            </li>
                            <li class="col-sm-6">
                                <figure class="figure d-flex">
                                    <i class="icon icon__massage mr-3"></i>
                                    <figcaption class="figure-caption">Массаж</figcaption>
                                </figure>
                            </li>
                            <li class="col-sm-6">
                                <figure class="figure d-flex">
                                    <span class="icon icon__pool mr-3"></span>
                                    <figcaption class="figure-caption">Бассейн <small class="text-muted">(3 штуки)</small></figcaption>
                                </figure>
                            </li>
                            <li class="col-sm-6">
                                <figure class="figure d-flex">
                                    <i class="icon icon__SPA mr-3"></i>
                                    <figcaption class="figure-caption">СПА</figcaption>
                                </figure>
                            </li>
                        </ul>
                    </section>
                </div>
            </div>
        </div>
        <div class="tab-pane fade"
                 id="complex-tabs__apartaments"
                 role="tabpanel"
                 aria-labelledby="apartaments-tab">
            <section>
                <h2>Апартаменты в Sunny View North</h2>
                <div class="complex-page__list-of-offers">
                    <%- include('../../common.blocks/list-of-offers/list-of-offers.tpl'); %>
                </div>
            </section>
        </div>
        <div class="tab-pane fade"
             id="complex-tabs__view-on-map"
             role="tabpanel">
            <!-- complex-tabs Map -->
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d10919.821039829789!2d29.473233549999996!3d46.8248821!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sru!2s!4v1523966385179" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
            <!-- /complex-tabs Map -->
        </div>
    </div>
</div>
<!-- /complex-tabs -->