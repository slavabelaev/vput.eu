<%- include('../../common.blocks/meta-header/meta-header.tpl'); %>
<%- include('../../common.blocks/page-header/page-header.tpl'); %>

<!-- Offer Page -->
<main class="offer-page">
    <div class="container">
        <!-- Block: breadcrumb -->
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Главная</a></li>
                <li class="breadcrumb-item"><a href="#">Болгария</a></li>
                <li class="breadcrumb-item"><a href="#">Святой Влас</a></li>
                <li class="breadcrumb-item active"
                    aria-current="page">Студия - Форт Нокс Гранд Резорт</li>
            </ol>
        </nav>
        <!-- /Block: breadcrumb -->
        <div class="row">
            <article class="col-xl-10 col-lg-9 col-md-8">
                <header>
                    <h1>Студия - Форт Нокс Гранд Резорт</h1>
                    <div class="offer-page__place">Болгария, Святой Влас</div>
                </header>
                <ul class="list-of-main-characteristics row">
                    <li class="list-of-main-characteristics__list-item col-6 col-md">
                        <figure class="list-of-main-characteristics__item">
                            <i class="list-of-main-characteristics__icon icon icon__home"></i>
                            <figcaption class="list-of-main-characteristics__caption">
                                <h3 class="list-of-main-characteristics__title">Вмещает гостей</h3>
                                <div class="list-of-main-characteristics__value"></div>
                            </figcaption>
                        </figure>
                    </li>
                    <li class="list-of-main-characteristics__list-item col-6 col-md">
                        <figure class="list-of-main-characteristics__item">
                            <i class="list-of-main-characteristics__icon icon icon__home"></i>
                            <figcaption class="list-of-main-characteristics__caption">
                                <h3 class="list-of-main-characteristics__title">Кол-во комнат</h3>
                                <div class="list-of-main-characteristics__value"></div>
                            </figcaption>
                        </figure>
                    </li>
                    <li class="list-of-main-characteristics__list-item col-6 col-md">
                        <figure class="list-of-main-characteristics__item">
                            <i class="list-of-main-characteristics__icon icon icon__bathroom"></i>
                            <figcaption class="list-of-main-characteristics__caption">
                                <h3 class="list-of-main-characteristics__title">Ванные</h3>
                                <div class="list-of-main-characteristics__value"></div>
                            </figcaption>
                        </figure>
                    </li>
                    <li class="list-of-main-characteristics__list-item col-6 col-md">
                        <figure class="list-of-main-characteristics__item">
                            <i class="list-of-main-characteristics__icon icon icon__air-conditioner"></i>
                            <figcaption class="list-of-main-characteristics__caption">
                                <h3 class="list-of-main-characteristics__title">Кондиционер</h3>
                                <div class="list-of-main-characteristics__value"></div>
                            </figcaption>
                        </figure>
                    </li>
                </ul>



                <div class="offer-page__offer-rules-of-residence py-3">
                    <%- include('../../sections/offer-rules-of-residence/offer-rules-of-residence.tpl'); %>
                </div>

                <div class="offer-page__offer-facilities py-3">
                    <%- include('../../sections/offer-facilities/offer-facilities.tpl'); %>
                </div>
            </article>
            <aside class="col-xl-2 col-lg-3 col-md-4">
            </aside>
        </div>
    </div>
    <div class="offer-page__offer-location-map">
        <%- include('../../common.blocks/offer-location-map/offer-location-map.tpl'); %>
    </div>
    <div class="offer-page__similar-offers container py-5">
        <%- include('../../sections/similar-offers/similar-offers.tpl'); %>
    </div>
</main>
<!-- /Offer Page -->

<%- include('../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../common.blocks/meta-footer/meta-footer.tpl'); %>