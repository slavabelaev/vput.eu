<% var lang = JSON.parse(include('page-search_lang_ru.json')); %>

<%- include('../../common.blocks/meta-header/meta-header.tpl'); %>
<%- include('../../common.blocks/page-header/page-header.tpl'); %>

<!-- Page: page-search -->
<link rel="stylesheet" href="assets/pages/page-search.css">
<script src="assets/pages/page-search.js" defer></script>

<main class="page-search">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-8 page-search__search-container">
                <div class="page-search__form-search-offers pt-4 pb-2 border-bottom">
                    <%- include('../../forms/form-search-offers/form-search-offers.tpl'); %>
                </div>
                <div class="page-search__list-of-offers py-4">
                    <!-- List of offers -->
                    <ul class="list-of-offers row">
                        <% for(var i = 0; i < 8; i++) { %>
                        <li class="col-sm-6 col-xl-4 mb-3">
                            <%- include('../../common.blocks/offer-item/offer-item.tpl'); %>
                        </li>
                        <% } %>
                    </ul>
                    <!-- /List of offers -->
                </div>
                <nav class="page-search__pagination">
                    <%- include('../../common.blocks/pagination/pagination.tpl'); %>
                </nav>
            </div>
            <div class="col-lg-4 page-search__map-container d-none d-lg-block">
                <div class="page-search__offers-on-the-map">
                    <%- include('../../common.blocks/offers-on-the-map/offers-on-the-map.tpl'); %>
                </div>
            </div>
        </div>
    </div>
</main>
<!-- /Page: page-search -->

<%- include('../../common.blocks/meta-footer/meta-footer.tpl'); %>