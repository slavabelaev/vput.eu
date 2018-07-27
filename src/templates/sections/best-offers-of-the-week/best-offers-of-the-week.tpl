<% var lang = JSON.parse(include('best-offers-of-the-week_lang_ru.json')); %>

<!-- Section: best-offers-of-the-week -->
<section class="best-offers-of-the-week">
    <h2 class="best-offers-of-the-week__title text-center mb-4"><%= lang.title %></h2>
    <div class="best-offers-of-the-week__list-of-offers">
        <!-- List of offers -->
        <ul class="list-of-offers row">
            <% for(var i = 0; i < 8; i++) { %>
            <li class="col-md-6 col-lg-4 col-xl-3 mb-3">
                <%- include('../../common.blocks/offer-item/offer-item.tpl'); %>
            </li>
            <% } %>
        </ul>
        <!-- /List of offers -->
    </div>
</section>
<!-- /Section: best-offers-of-the-week -->