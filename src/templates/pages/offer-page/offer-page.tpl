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
                    <%- include('../../common.blocks/list-of-main-characteristics/list-of-main-characteristics.tpl'); %>
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
                <div class="progress mb-4">
                    <div class="progress-bar"
                         role="progressbar"
                         style="width: 50%"
                         aria-valuenow="50"
                         aria-valuemin="0"
                         aria-valuemax="100"></div>
                </div>
                <div class="offer-page__offer-price-calculator">
                    <%- include('../../common.blocks/offer-price-calculator/offer-price-calculator.tpl'); %>
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