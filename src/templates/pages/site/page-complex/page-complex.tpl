<% var lang = JSON.parse(include('page-complex_lang_ru.json')); %>

<%- include('../../../common.blocks/meta-header/meta-header.tpl'); %>
<%- include('../../../common.blocks/page-header/page-header.tpl'); %>

<!-- Page: page-complex -->
<link rel="stylesheet" href="assets/pages/site/page-complex.css">
<script src="assets/pages/site/page-complex.js" defer></script>

<main class="page-complex">
    <div class="pt-4 pb-2 border-bottom">
        <div class="container">
            <div class="page-complex__form-search-offers form-search-offers__is_short">
                <%- include('../../../forms/form-search-offers/form-search-offers.tpl'); %>
            </div>
        </div>
    </div>
    <div class="container py-4">
        <section class="page-complex__section mb-4">
            <header class="page-complex__header">
                <h1 class="page-complex__title">Sunny View North,
                    <a href="#" class="page-complex__city">Святой Влас, Болгария</a>
                </h1>
            </header>
            <div class="page-complex__complex-tabs">
                <%- include('../../../common.blocks/complex-tabs/complex-tabs.tpl'); %>
            </div>
        </section>
        <div class="page-complex__nearest-complexes">
            <%- include('../../../sections/nearest-complexes/nearest-complexes.tpl'); %>
        </div>
    </div>
</main>
<!-- /Page: page-complex -->

<%- include('../../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../../common.blocks/meta-footer/meta-footer.tpl'); %>