<%- include('../../common.blocks/meta-header/meta-header.tpl'); %>
<div class="index-page__page-header">
<%- include('../../common.blocks/page-header/page-header.tpl'); %>
</div>

<!-- Index Page -->
<main class="index-page">
    <section id="rentals-search" class="index-page__section index-page__rentals-search">
        <div class="container">
            <header class="index-page__header mb-4">
                <h1 class="index-page__title mb-0">ПОРТАЛ №1 В БОЛГАРИИ</h1>
                <p class="index-page__description lead">по безопасной аренде частного жилья</p>
            </header>
            <div class="index-page__offers-search-form">
                <%- include('../../common.blocks/offers-search-form/offers-search-form.tpl'); %>
            </div>
        </div>
    </section>

    <section id="the-best-apartaments-of-the-week" class="index-page__section">
        <div class="container">
            <h2 class="text-center">ЛУЧШИЕ АПАРТАМЕНТЫ НЕДЕЛИ</h2>
            <%- include('../../common.blocks/list-of-offers/list-of-offers.tpl'); %>
        </div>
    </section>

    <section id="most-popular-cities" class="index-page__section bg-light">
        <div class="container">
            <header class="text-center">
                <h2>САМЫЕ ПОПУЛЯРНЫЕ ГОРОДА</h2>
                <div class="lead">Туристы часто выбирают эти направления</div>
            </header>
            <%- include('../../common.blocks/list-of-most-popular-cities/list-of-most-popular-cities.tpl'); %>
        </div>
    </section>

    <div class="index-page__section">
        <div class="container">
            <%- include('../../sections/services/services.tpl'); %>
        </div>
    </div>

    <div class="index-page__section bg-light">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <%- include('../../sections/how-it-works/how-it-works.tpl'); %>
                </div>
                <div class="col-md-6">
                    <%- include('../../sections/latest-reviews/latest-reviews.tpl'); %>
                </div>
            </div>
        </div>
    </div>

    <div class="index-page__section">
        <div class="container">
            <%- include('../../sections/latest-rentals/latest-rentals.tpl'); %>
        </div>
    </div>

    <div class="index-page__section">
        <div class="container">
            <%- include('../../sections/guarantees/guarantees.tpl'); %>
        </div>
    </div>
</main>
<!-- /Index Page -->

<%- include('../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../common.blocks/meta-footer/meta-footer.tpl'); %>