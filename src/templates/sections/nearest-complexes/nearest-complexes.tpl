<% var lang = JSON.parse(include('nearest-complexes_lang_ru.json')); %>

<!-- Section: nearest-complexes -->
<section class="nearest-complexes">
    <h2 class="nearest-complexes__title mb-3"><%= lang.title %></h2>
    <div class="nearest-complexes__list-of-complexes">
        <%- include('../../common.blocks/list-of-complexes/list-of-complexes.tpl'); %>
    </div>
</section>
<!-- /Section: nearest-complexes -->