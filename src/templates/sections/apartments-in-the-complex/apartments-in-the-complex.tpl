<% var lang = JSON.parse(include('apartments-in-the-complex_lang_ru.json')); %>

<!-- Section: apartments-in-the-complex -->
<section class="apartments-in-the-complex">
    <h2 class="apartments-in-the-complex__title mb-3"><%= lang.title %></h2>
    <div class="apartments-in-the-complex__list-of-offers">
        <%- include('../../common.blocks/list-of-offers/list-of-offers.tpl'); %>
    </div>
</section>
<!-- /Section: apartments-in-the-complex -->