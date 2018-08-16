<% var lang = JSON.parse(include('page-favorites_lang_ru.json')); %>

<%- include('../../../common.blocks/meta-header/meta-header.tpl'); %>
<%- include('../../../common.blocks/page-header/page-header.tpl'); %>

<!-- Page: page-favorites -->
<link rel="stylesheet" href="assets/pages/site/page-favorites.css">
<script src="assets/pages/site/page-favorites.js" defer></script>

<main class="page-favorites">
    <section class="page-favorites__section">
        <div class="container py-4">
            <h1 class="page-favorites__title text-center mb-4">Список избранных вами предложений</h1>
            <!-- Common: list-of-offers -->
            <ul class="list-of-offers row">
                <% for(var i = 0; i < 8; i++) { %>
                <li class="col-xl-3 col-lg-4 col-md-6 mb-3">
                    <%- include('../../../common.blocks/offer-item/offer-item.tpl'); %>
                </li>
                <% } %>
            </ul>
            <!-- /Common: list-of-offers -->
        </div>
    </section>
</main>
<!-- /Page: page-favorites -->

<%- include('../../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../../common.blocks/meta-footer/meta-footer.tpl'); %>