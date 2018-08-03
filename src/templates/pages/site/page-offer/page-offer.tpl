<% var lang = JSON.parse(include('page-offer_lang_ru.json')); %>

<%- include('../../../common.blocks/meta-header/meta-header.tpl'); %>
<%- include('../../../common.blocks/page-header/page-header.tpl'); %>

<!-- Page: page-offer -->
<link rel="stylesheet" href="assets/pages/site/page-offer.css">
<script src="assets/pages/site/page-offer.js" defer></script>

<main class="page-offer">
    <div class="container">
        <!-- Common: breadcrumb -->
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Главная</a></li>
                <li class="breadcrumb-item"><a href="#">Болгария</a></li>
                <li class="breadcrumb-item"><a href="#">Святой Влас</a></li>
                <li class="breadcrumb-item active"
                    aria-current="page">Студия - Форт Нокс Гранд Резорт</li>
            </ol>
        </nav>
        <!-- /Common: breadcrumb -->

        <div class="page-offer__image-slider">
            <%- include('../../../common.blocks/offer-image-slider/offer-image-slider.tpl'); %>
        </div>

        <div class="row">
            <div class="col-xl">
                <article class="page-offer__article py-4">
                    <header class="page-offer__header pb-3 border-bottom">
                        <h1 class="page-offer__title">Студия - Форт Нокс Гранд Резорт</h1>
                        <div class="page-offer__place lead">Болгария, Святой Влас, <a href="complex.html" class="page-offer__complex">Комплекс Венера-палас</a></div>
                    </header>

                    <div class="page-offer__list-of-main-characteristics pt-4 border-bottom">
                        <%- include('../../../sections/offer-main-characteristics/offer-main-characteristics.tpl'); %>
                    </div>

                    <div class="page-offer__offer-bedrooms py-4 border-bottom">
                        <%- include('../../../sections/offer-bedrooms/offer-bedrooms.tpl'); %>
                    </div>

                    <div class="page-offer__offer-reviews py-4 border-bottom">
                        <%- include('../../../sections/offer-reviews/offer-reviews.tpl'); %>
                    </div>

                    <div class="page-offer__offer-facilities py-4 border-bottom">
                        <%- include('../../../sections/offer-characteristics/offer-characteristics.tpl'); %>
                    </div>

                    <div class="page-offer__offer-rules-of-residence py-4 border-bottom">
                        <%- include('../../../sections/offer-rules-of-residence/offer-rules-of-residence.tpl'); %>
                    </div>

                    <div class="page-offer__offer-facilities py-4 border-bottom">
                        <%- include('../../../sections/offer-facilities/offer-facilities.tpl'); %>
                    </div>

                    <div class="page-offer__offer-places-nearby py-4 border-bottom">
                        <%- include('../../../sections/offer-places-nearby/offer-places-nearby.tpl'); %>
                    </div>

                    <div class="page-offer__offer-prices-for-the-period py-4 border-bottom">
                        <%- include('../../../sections/offer-prices-for-the-period/offer-prices-for-the-period.tpl'); %>
                    </div>

                    <div class="page-offer__offer-short-description py-4 border-bottom">
                        <%- include('../../../sections/offer-short-description/offer-short-description.tpl'); %>
                    </div>
                </article>
            </div>
            <div class="col-xl-auto">
                <a href="#"
                   class="page-offer__modal-toggle btn btn-primary"
                   data-target=".page-offer__modal"
                   data-toggle="modal">
                    <i class="icon icon__book icon_style_light"></i>
                </a>
                <div class="page-offer__modal modal modal-right fade"
                     tabindex="-1"
                     is-sticked>
                    <div class="page-offer__modal-dialog modal-dialog">
                        <aside class="page-offer__aside modal-content">
                            <div class="page-offer__offer-employed-by mb-3">
                                <%- include('../../../common.blocks/offer-employed-by/offer-employed-by.tpl'); %>
                            </div>
                            <div class="page-offer__form-booking mb-3">
                                <%- include('../../../forms/form-booking/form-booking.tpl'); %>
                            </div>
                            <div class="page-offer__offer-insterested-in mb-3">
                                <%- include('../../../common.blocks/offer-interested-in/offer-interested-in.tpl'); %>
                            </div>
                            <div class="page-offer__offer-owner mb-3">
                                <%- include('../../../common.blocks/offer-owner/offer-owner.tpl'); %>
                            </div>
                            <div class="page-offer__offer-share mb-3">
                                <%- include('../../../common.blocks/offer-share/offer-share.tpl'); %>
                            </div>
                            <div class="page-offer__how-it-works">
                                <%- include('../../../sections/how-it-works/how-it-works.tpl'); %>
                            </div>
                        </aside>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="page-offer__offer-location-map pt-4">
        <%- include('../../../sections/offer-location/offer-location.tpl'); %>
    </div>
    <div class="page-offer__complex bg-light pt-5 pb-3">
        <div class="container">
            <div class="page-offer__about-the-complex mb-4">
                <%- include('../../../sections/about-the-complex/about-the-complex.tpl'); %>
            </div>
            <div class="page-offer__complex-offers">
                <%- include('../../../sections/complex-offers/complex-offers.tpl'); %>
            </div>
        </div>
    </div>
    <div class="page-offer__similar-offers container py-5">
        <%- include('../../../sections/similar-offers/similar-offers.tpl'); %>
    </div>
</main>
<!-- /Page: page-offer -->

<%- include('../../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../../common.blocks/meta-footer/meta-footer.tpl'); %>