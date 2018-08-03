<% var lang = JSON.parse(include('page-support_lang_ru.json')); %>

<%- include('../../../common.blocks/meta-header/meta-header.tpl'); %>
<div class="page-support__page-header navbar-dark-md">
<%- include('../../../common.blocks/page-header/page-header.tpl'); %>
</div>

<!-- Page: page-support -->
<link rel="stylesheet" href="assets/pages/site/page-support.css">
<script src="assets/pages/site/page-support.js" defer></script>

<main class="page-support">
    <div class="container py-5">
        <div class="row">
            <div class="page-support__form-support col-lg-6 offset-lg-3">
                <%- include('../../../forms/form-support/form-support.tpl'); %>
            </div>
        </div>
    </div>
</main>
<!-- /Page: page-support -->

<%- include('../../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../../common.blocks/meta-footer/meta-footer.tpl'); %>