<% var lang = JSON.parse(include('page-transfer_lang_ru.json')); %>

<%- include('../../../common.blocks/meta-header/meta-header.tpl'); %>
<div class="page-transfer__page-header navbar-dark-md">
    <%- include('../../../common.blocks/page-header/page-header.tpl'); %>
</div>

<!-- Page: page-transfer -->
<link rel="stylesheet" href="assets/pages/page-transfer.css">
<script src="assets/pages/page-transfer.js" defer></script>

<main class="page-transfer">
    <%- include('../../../../content/articles/article-transfer/article-transfer_lang_ru.tpl'); %>
    <div class="container py-5">
        <%- include('../../../sections/our-services/our-services.tpl'); %>
    </div>
</main>
<!-- /Page: page-transfer -->

<%- include('../../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../../common.blocks/meta-footer/meta-footer.tpl'); %>