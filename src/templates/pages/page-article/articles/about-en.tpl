<%- include('../../../common.blocks/meta-header/meta-header.tpl'); %>
<div class="page-article__page-header navbar-dark">
    <%- include('../../../common.blocks/page-header/page-header.tpl'); %>
</div>

<!-- Page: page-article -->
<link rel="stylesheet" href="assets/pages/page-article.css">
<script src="assets/pages/page-article.js" defer></script>
<main class="page-article">
    <%- include('../../../articles/article-about/article-about.en.tpl'); %>
    <section class="page-article__section pb-5">
        <div class="container">
            <%- include('../../../sections/feedback/feedback.tpl'); %>
        </div>
    </section>
</main>
<!-- /Page: page-article -->

<%- include('../../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../../common.blocks/meta-footer/meta-footer.tpl'); %>