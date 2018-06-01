<!-- List of complexes -->
<ul class="list-of-complexes row">
    <% for(var i = 0; i < 8; i++) { %>
    <li class="col-sm-6 col-lg-4 col-xl-3">
        <%- include('../complex-item/complex-item.tpl'); %>
    </li>
    <% } %>
</ul>
<!-- /List of complexes -->