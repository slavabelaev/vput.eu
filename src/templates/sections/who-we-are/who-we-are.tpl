<% var lang = JSON.parse(include('who-we-are_lang_ru.json')); %>

<!-- Section: Who we are -->
<section class="who-we-are">
    <header class="who-we-are__header mb-5 text-center">
        <h1 class="who-we-are__title mb-md-0"><%= lang.title %></h1>
        <div class="who-we-are__description"><%= lang.description %></div>
    </header>
    <div class="who-we-are__form-search-offers form-search-offers__is_short">
        <%- include('../../forms/form-search-offers/form-search-offers.tpl'); %>
    </div>
    <div class="who-we-are__popular-cities p-3">
        <%- include('../../common.blocks/popular-cities/popular-cities.tpl'); %>
    </div>
</section>
<!-- /Section: Who we are -->