<% var lang = JSON.parse(include('page-about_lang_ru.json')); %>

<%- include('../../../common.blocks/meta-header/meta-header.tpl'); %>
<div class="page-about__page-header navbar-dark-md">
    <%- include('../../../common.blocks/page-header/page-header.tpl'); %>
</div>

<!-- Page: page-about -->
<link rel="stylesheet" href="assets/pages/page-about.css">
<script src="assets/pages/page-about.js" defer></script>
<main class="page-about">
    <%- include('../../../../content/articles/article-about/article-about_lang_ru.tpl'); %>
    <section class="page-about__section pb-5">
        <div class="container">
            <%- include('../../../sections/feedback/feedback.tpl'); %>
        </div>
    </section>
</main>
<!-- /Page: page-about -->

<%- include('../../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../../common.blocks/meta-footer/meta-footer.tpl'); %>