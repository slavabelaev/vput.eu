<% //var lang = JSON.parse(include('page-transfers_lang_ru.json')); %>

<%- include('../../../common.blocks/meta-header/meta-header.tpl'); %>
<%- include('../../../common.blocks/page-header/page-header.tpl'); %>

<!-- Page: page-transfers -->
<link rel="stylesheet" href="assets/pages/site/page-transfers.css">
<script src="assets/pages/site/page-transfers.js" defer></script>

<main class="page-transfers">
    <div class="container py-4">
        <h1 class="page-transfers__title text-center mb-4">Трансферы</h1>
        <div class="row">
            <div class="col-xl-3 d-none d-xl-block">
                <aside class="page-transfers__aside">
                    <%- include('../../../common.blocks/cabinet-navigation/cabinet-navigation.tpl'); %>
                </aside>
            </div>
            <div class="col-xl-9">
                <ul class="row">
                    <li class="col-12 mb-4">
                        <%- include('../../../forms/form-edit-transfer/form-edit-transfer.tpl'); %>
                    </li>
                    <li class="col-12 mb-4">
                        <%- include('../../../forms/form-edit-transfer/form-edit-transfer.tpl'); %>
                    </li>
                    <li class="col-12 mb-4">
                        <%- include('../../../forms/form-edit-transfer/form-edit-transfer.tpl'); %>
                    </li>
                    <li class="col-12 mb-4">
                        <%- include('../../../forms/form-edit-transfer/form-edit-transfer.tpl'); %>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</main>
<!-- /Page: page-transfers -->

<%- include('../../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../../common.blocks/meta-footer/meta-footer.tpl'); %>