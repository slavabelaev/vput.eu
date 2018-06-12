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
            <article class="offer-page__article col">
                <header class="offer-page__header py-3 border-bottom">
                    <h1 class="offer-page__title">Студия - Форт Нокс Гранд Резорт</h1>
                    <div class="offer-page__place">Болгария, Святой Влас</div>
                </header>

                <div class="offer-page__list-of-main-characteristics pt-4 border-bottom">
                    <%- include('../../sections/offer-main-characteristics/offer-main-characteristics.tpl'); %>
                </div>

                <div class="offer-page__offer-bedrooms py-4 border-bottom">
                    <%- include('../../sections/offer-bedrooms/offer-bedrooms.tpl'); %>
                </div>

                <div class="offer-page__offer-facilities py-4 border-bottom">
                    <%- include('../../sections/offer-characteristics/offer-characteristics.tpl'); %>
                </div>

                <div class="offer-page__offer-rules-of-residence py-4 border-bottom">
                    <%- include('../../sections/offer-rules-of-residence/offer-rules-of-residence.tpl'); %>
                </div>

                <div class="offer-page__offer-facilities py-4 border-bottom">
                    <%- include('../../sections/offer-facilities/offer-facilities.tpl'); %>
                </div>

                <div class="offer-page__offer-places-nearby py-4 border-bottom">
                    <%- include('../../sections/offer-places-nearby/offer-places-nearby.tpl'); %>
                </div>

                <div class="offer-page__offer-prices-for-the-period py-4 border-bottom">
                    <%- include('../../sections/offer-prices-for-the-period/offer-prices-for-the-period.tpl'); %>
                </div>

                <div class="offer-page__offer-short-description py-4 border-bottom">
                    <%- include('../../sections/offer-short-description/offer-short-description.tpl'); %>
                </div>
            </article>
            <aside class="offer-page__aside col">
                <div class="offer-page__offer-employed-by mb-3">
                    <%- include('../../common.blocks/offer-employed-by/offer-employed-by.tpl'); %>
                </div>
                <div class="offer-page__offer-price-calculator mb-3">
                    <%- include('../../common.blocks/offer-price-calculator/offer-price-calculator.tpl'); %>
                </div>
                <div class="offer-page__offer-insterested-in mb-3">
                    <%- include('../../common.blocks/offer-interested-in/offer-interested-in.tpl'); %>
                </div>
                <div class="offer-page__offer-owner mb-3">
                    <%- include('../../common.blocks/offer-owner/offer-owner.tpl'); %>
                </div>
                <div class="offer-page__offer-share mb-3">
                    <%- include('../../common.blocks/offer-share/offer-share.tpl'); %>
                </div>
                <div class="offer-page__how-it-works">
                    <%- include('../../sections/how-it-works/how-it-works.tpl'); %>
                </div>
            </aside>
        </div>
    </div>
    <div class="offer-page__offer-location-map pt-4">
        <%- include('../../sections/offer-location/offer-location.tpl'); %>
    </div>
    <div class="offer-page__similar-offers container py-5">
        <%- include('../../sections/similar-offers/similar-offers.tpl'); %>
    </div>
</main>
<!-- /Offer Page -->

<%- include('../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../common.blocks/meta-footer/meta-footer.tpl'); %>