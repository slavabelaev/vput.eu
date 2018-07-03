<%- include('../../common.blocks/meta-header/meta-header.tpl'); %>
<%- include('../../common.blocks/page-header/page-header.tpl'); %>

<!-- Complex Page -->
<main class="complex-page">
    <div class="pt-4 pb-2 border-bottom">
        <div class="container">
            <div class="complex-page__offers-search-form offers-search-form__is_short">
                <%- include('../../common.blocks/offers-search-form/offers-search-form.tpl'); %>
            </div>
        </div>
    </div>
    <div class="container py-4">
        <section class="complex-page__section">
            <header class="complex-page__header">
                <h1 class="complex-page__title">Sunny View North,
                    <a href="#" class="complex-page__city">Святой Влас, Болгария</a>
                </h1>
            </header>
            <div class="complex-page__complex-tabs">
                <%- include('../../common.blocks/complex-tabs/complex-tabs.tpl'); %>
            </div>
        </section>
        <div class="complex-page__nearest-complexes">
            <%- include('../../sections/nearest-complexes/nearest-complexes.tpl'); %>
        </div>
    </div>
</main>
<!-- /Complex Page -->

<%- include('../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../common.blocks/meta-footer/meta-footer.tpl'); %>