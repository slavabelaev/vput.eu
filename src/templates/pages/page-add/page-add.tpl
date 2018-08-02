<% var lang = JSON.parse(include('page-add_lang_ru.json')); %>

<%- include('../../common.blocks/meta-header/meta-header.tpl'); %>
<div class="page-add__page-header navbar-dark-md">
<%- include('../../common.blocks/page-header/page-header.tpl'); %>
</div>

<!-- Page: page-add -->
<link rel="stylesheet"
      href="assets/pages/page-add.css">
<script src="assets/pages/page-add.js" defer></script>

<main class="page-add">
    <header class="page-add__header d-flex align-items-center text-center py-5">
        <div class="container">
            <h1 class="page-add__title"><%= lang.title %></h1>
            <div class="page-add__description lead"><%= lang.description %></div>
        </div>
    </header>
    <div class="container py-5">
        <div class="page-add__form-renting">
            <%- include('../../forms/form-renting/form-renting.tpl'); %>
        </div>

        <div class="row pt-5 mt-5">
            <div class="col-md-10 offset-md-1">
                <div class="page-add__ask-for-help">
                    <%- include('../../common.blocks/ask-for-help/ask-for-help.tpl'); %>
                </div>
            </div>
        </div>
    </div>
</main>
<!-- /Page: page-add -->

<%- include('../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../common.blocks/meta-footer/meta-footer.tpl'); %>