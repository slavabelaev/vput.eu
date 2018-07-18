<%- include('../../common.blocks/meta-header/meta-header.tpl'); %>
<%- include('../../common.blocks/page-header/page-header.tpl'); %>

<!-- Page: page-favorites -->
<link rel="stylesheet" href="assets/pages/page-favorites.css">
<script src="assets/pages/page-favorites.js" defer></script>

<main class="page-favorites">
    <section class="page-favorites__section">
        <div class="container py-4">
            <h1 class="page-favorites__title text-center mb-4">Список избранных вами предложений</h1>
            <%- include('../../common.blocks/list-of-offers/list-of-offers.tpl'); %>
        </div>
    </section>
</main>
<!-- /Page: page-favorites -->

<%- include('../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../common.blocks/meta-footer/meta-footer.tpl'); %>