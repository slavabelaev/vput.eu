<%- include('../../common.blocks/meta-header/meta-header.tpl'); %>
<div class="index-page__page-header">
<%- include('../../common.blocks/page-header/page-header.tpl', { $style: "dark" }); %>
</div>

<!-- Index Page -->
<main class="index-page">
    <div class="index-page__section index-page__who-we-are">
        <div class="container">
        <%- include('../../sections/who-we-are/who-we-are.tpl'); %>
        </div>
    </div>

    <div class="index-page__section index-page__best-offers-of-the-week">
        <div class="container">
            <%- include('../../sections/best-offers-of-the-week/best-offers-of-the-week.tpl'); %>
        </div>
    </div>

    <div class="index-page__section index-page__most-popular-cities bg-light">
        <div class="container">
            <%- include('../../sections/most-popular-cities/most-popular-cities.tpl'); %>
        </div>
    </div>

    <div class="index-page__section index-page__services">
        <div class="container">
            <%- include('../../sections/services/services.tpl'); %>
        </div>
    </div>

    <div class="index-page__section index-page__about bg-light">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-xl-6 mb-3">
                    <div class="index-page__how-it-works">
                        <%- include('../../sections/how-it-works/how-it-works.tpl'); %>
                    </div>
                </div>
                <div class="col-lg-7 col-xl-6 mb-3">
                    <div class="index-page__latest-reviews">
                        <%- include('../../sections/latest-reviews/latest-reviews.tpl'); %>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="index-page__section index-page__latest-offers">
        <div class="container">
            <%- include('../../sections/latest-offers/latest-offers.tpl'); %>
        </div>
    </div>

    <div class="index-page__section index-page__guarantees">
        <div class="container">
            <%- include('../../sections/guarantees/guarantees.tpl'); %>
        </div>
    </div>
</main>
<!-- /Index Page -->

<%- include('../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../common.blocks/meta-footer/meta-footer.tpl'); %>