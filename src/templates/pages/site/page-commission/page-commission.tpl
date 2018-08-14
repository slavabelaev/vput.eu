<% var lang = JSON.parse(include('page-commission_lang_ru.json')); %>

<%- include('../../../common.blocks/meta-header/meta-header.tpl'); %>
<div class="page-commission__page-header navbar-dark-md">
    <%- include('../../../common.blocks/page-header/page-header.tpl'); %>
</div>

<!-- Page: page-commission -->
<link rel="stylesheet" href="assets/pages/page-commission.css">
<script src="assets/pages/page-commission.js" defer></script>

<main class="page-commission">
    <%- include('../../../../content/articles/article-commission/article-commission_lang_ru.tpl'); %>
</main>
<!-- /Page: page-commission -->

<%- include('../../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../../common.blocks/meta-footer/meta-footer.tpl'); %>