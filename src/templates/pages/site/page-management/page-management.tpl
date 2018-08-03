<%- include('../../../common.blocks/meta-header/meta-header.tpl'); %>
<div class="page-management__page-header navbar-dark-md">
    <%- include('../../../common.blocks/page-header/page-header.tpl'); %>
</div>

<!-- Page: page-management -->
<link rel="stylesheet" href="assets/pages/page-management.css">
<script src="assets/pages/page-management.js" defer></script>

<main class="page-management">
    <%- include('../../../../content/articles/article-management/article-management_lang_ru.tpl'); %>
    <div class="container py-5">
        <%- include('../../../sections/our-services/our-services.tpl'); %>
    </div>
</main>
<!-- /Page: page-management -->

<%- include('../../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../../common.blocks/meta-footer/meta-footer.tpl'); %>