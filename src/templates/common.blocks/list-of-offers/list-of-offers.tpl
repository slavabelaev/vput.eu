<% var lang = JSON.parse(include('list-of-offers_lang_ru.json')); %>

<!-- Common: list-of-offers -->
<ul class="list-of-offers row" data-slick-adaptive>
    <% for(var i = 0; i < 8; i++) { %>
    <li class="col-xl-3 col-lg-4 col-md-6 mb-3">
        <%- include('../offer-item/offer-item.tpl'); %>
    </li>
    <% } %>
</ul>
<!-- /Common: list-of-offers -->