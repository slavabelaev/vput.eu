<%- include('../../common.blocks/meta-header/meta-header.tpl'); %>
<%- include('../../common.blocks/page-header/page-header.tpl'); %>

<!-- Page: Add page -->
<main class="add-page">
    <header class="add-page__header text-center py-5">
        <div class="container">
            <h1 class="add-page__title">Сдайте свое жилье</h1>
            <div class="add-page__lead lead">Качественно заполненное предложение повышает количество заказов</div>
            <div class="lead">ПРОЦЕСС ДОБАВЛЕНИЯ НЕ ЗАЙМЁТ БОЛЕЕ 5 МИНУТ</div>
        </div>
    </header>
    <div class="container py-5">
        <%- include('../../sections/renting-form/renting-form.tpl'); %>
    </div>
</main>
<!-- /Page: Add page -->

<%- include('../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../common.blocks/meta-footer/meta-footer.tpl'); %>