<!-- List of offers -->
<ul class="list-of-offers row">
    <% for(var i = 0; i < 8; i++) { %>
    <li class="col-xl-3 col-lg-4 col-sm-6 mb-3">
        <%- include('../offer-item/offer-item.tpl'); %>
    </li>
    <% } %>
</ul>
<!-- /List of offers -->