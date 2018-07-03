<!-- Block: list-of-offers -->
<ul class="list-of-offers row">
    <% for(var i = 0; i < 8; i++) { %>
    <li class="col-xl-3 col-lg-4 col-md-6 mb-3">
        <%- include('../offer-item/offer-item.tpl'); %>
    </li>
    <% } %>
</ul>
<!-- /Block: list-of-offers -->