<!-- List of offers -->
<ul class="list-of-offers row">
    <% for(var i = 0; i < 8; i++) { %>
    <li class="col mb-3">
        <%- include('../offer-item/offer-item.tpl'); %>
    </li>
    <% } %>
</ul>
<!-- /List of offers -->