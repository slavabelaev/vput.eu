<% var lang = JSON.parse(include('offer-location_lang_ru.json')); %>
<% var data = { title: "Болгария, Святой Влас" }; %>

<!-- Section: offer-location -->
<section class="offer-location">
    <h2 class="offer-location__title container mb-4"><%= data.title %></h2>
    <div class="offer-location__view-on-map">
        <%- include('../../common.blocks/view-on-map/view-on-map.tpl'); %>
    </div>
</section>
<!-- /Section: offer-location -->