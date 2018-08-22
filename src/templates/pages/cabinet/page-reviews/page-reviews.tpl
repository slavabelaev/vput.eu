<% //var lang = JSON.parse(include('page-reviews_lang_ru.json')); %>

<%- include('../../../common.blocks/meta-header/meta-header.tpl'); %>
<div class="navbar-dark-md">
    <%- include('../../../common.blocks/page-header/page-header.tpl'); %>
</div>

<!-- Page: page-reviews -->
<link rel="stylesheet" href="assets/pages/cabinet/page-reviews.css">
<script src="assets/pages/cabinet/page-reviews.js" defer></script>

<main class="page-reviews">
    <header class="page-cabinet__header py-4">
        <div class="container">
            <h1 class="page-cabinet__title mb-0">Отзывы</h1>
        </div>
    </header>
</main>
<!-- /Page: page-reviews -->

<%- include('../../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../../common.blocks/meta-footer/meta-footer.tpl'); %>