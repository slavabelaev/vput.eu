<%- include('../../common.blocks/meta-header/meta-header.tpl'); %>
<div class="page-index__page-header navbar-dark-md">
<%- include('../../common.blocks/page-header/page-header.tpl'); %>
</div>

<!-- Page: page-index -->
<link rel="stylesheet" href="assets/pages/page-index.css">
<script src="assets/pages/page-index.js" defer></script>

<main class="page-index">
    <div class="page-index__section page-index__who-we-are">
        <div class="container">
        <%- include('../../sections/who-we-are/who-we-are.tpl'); %>
        </div>
    </div>

    <div class="page-index__section page-index__best-offers-of-the-week">
        <div class="container">
            <%- include('../../sections/best-offers-of-the-week/best-offers-of-the-week.tpl'); %>
        </div>
    </div>

    <div class="page-index__section page-index__most-popular-cities bg-light">
        <div class="container">
            <%- include('../../sections/most-popular-cities/most-popular-cities.tpl'); %>
        </div>
    </div>

    <div class="page-index__section page-index__services">
        <div class="container">
            <%- include('../../sections/services/services.tpl'); %>
        </div>
    </div>

    <div class="page-index__section page-index__about bg-light">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-xl-6 mb-3">
                    <div class="page-index__how-it-works">
                        <%- include('../../sections/how-it-works/how-it-works.tpl'); %>
                    </div>
                </div>
                <div class="col-lg-7 col-xl-6 mb-3">
                    <div class="page-index__latest-reviews">
                        <%- include('../../sections/latest-reviews/latest-reviews.tpl'); %>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="page-index__section page-index__latest-offers">
        <div class="container">
            <%- include('../../sections/latest-offers/latest-offers.tpl'); %>
        </div>
    </div>

    <div class="page-index__section page-index__guarantees">
        <div class="container">
            <%- include('../../sections/guarantees/guarantees.tpl'); %>
        </div>
    </div>
</main>
<!-- /Page: page-index -->

<%- include('../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../common.blocks/meta-footer/meta-footer.tpl'); %>