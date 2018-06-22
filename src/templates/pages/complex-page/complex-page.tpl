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
    <div class="container pt-4 pb-4">
        <section>
            <header class="d-flex align-items-end">
                <h1>Sunny View North,
                    <small class="h3 text-capitalize text-muted font-weight-normal">Святой Влас, Болгария</small>
                </h1>
            </header>
            <div class="complex-page__complex-tabs">
                <%- include('../../common.blocks/complex-tabs/complex-tabs.tpl'); %>
            </div>
        </section>
        <section>
            <h2>Ближайшие комплексы</h2>
            <div class="complex-page__list-of-complexes">
                <%- include('../../common.blocks/list-of-complexes/list-of-complexes.tpl'); %>
            </div>
        </section>
    </div>
</main>
<!-- /Complex Page -->

<%- include('../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../common.blocks/meta-footer/meta-footer.tpl'); %>