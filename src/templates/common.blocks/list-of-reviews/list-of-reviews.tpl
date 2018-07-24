<% var lang = JSON.parse(include('list-of-reviews_lang_ru.json')); %>

<!-- Common: list-of-reviews -->
<ul class="list-of-reviews">
    <% for(var i = 0; i < 2; i++) { %>
    <li class="list-of-reviews__item">
        <%- include('../../common.blocks/review/review.tpl'); %>
    </li>
    <% } %>
</ul>
<!-- /Common: list-of-reviews -->