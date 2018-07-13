<%- include('../../common.blocks/meta-header/meta-header.tpl'); %>
<%- include('../../common.blocks/page-header/page-header.tpl'); %>

<!-- Page: page-add -->
<main class="page-add">
    <header class="page-add__header text-center py-5">
        <div class="container">
            <h1 class="page-add__title">Сдайте свое жилье</h1>
            <div class="page-add__lead lead">Качественно заполненное предложение повышает количество заказов</div>
            <div class="lead">ПРОЦЕСС ДОБАВЛЕНИЯ НЕ ЗАЙМЁТ БОЛЕЕ 5 МИНУТ</div>
        </div>
    </header>
    <div class="container py-5">
        <%- include('../../forms/form-renting/form-renting.tpl'); %>
    </div>
</main>
<!-- /Page: page-add -->

<%- include('../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../common.blocks/meta-footer/meta-footer.tpl'); %>