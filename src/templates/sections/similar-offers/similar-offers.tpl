<% var lang = JSON.parse(include('similar-offers_lang_ru.json')); %>

<!-- Section: similar-offers -->
<section class="similar-offers">
    <h2 class="similar-offers__title mb-4 text-center"><%= lang.title %></h2>
    <div class="similar-offers__list-of-offers">
        <!-- list-of-offers -->
        <ul class="list-of-offers row">
            <% for(var i = 0; i < 8; i++) { %>
            <li class="col-md-6 col-lg-4 col-xl-3 mb-3">
                <%- include('../../common.blocks/offer-item/offer-item.tpl'); %>
            </li>
            <% } %>
        </ul>
        <!-- /list-of-offers -->
    </div>
    <div class="similar-offers__link-container mt-3 text-center">
        <a href="search.html" class="btn btn-primary btn-lg"><%= lang.see_more_offers %></a>
    </div>
</section>
<!-- /Section: similar-offers -->