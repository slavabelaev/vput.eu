<!-- List of search offers -->
<ul class="list-of-search-offers row">
    <% for(var i = 0; i < 8; i++) { %>
    <li class="col-lg-4 col-sm-6 mb-3">
        <%- include('../offer-item/offer-item.tpl'); %>
    </li>
    <% } %>
</ul>
<!-- /List of search offers -->