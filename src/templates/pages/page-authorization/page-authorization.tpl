<!-- Page: page-authorization -->
<%- include('../../common.blocks/meta-header/meta-header.tpl'); %>

<link rel="stylesheet" href="assets/pages/page-authorization.css">
<script src="assets/pages/page-authorization.js" defer></script>

<main class="page-authorization">
    <div class="container">
        <a class="page-authorization__logo my-4" href="index.html"></a>
        <h1 class="text-center text-white mb-5">ВЫ НЕ ЗАРЕГИСТРИРОВАНЫ ИЛИ НЕ АВТОРИЗОВАНЫ</h1>
        <div class="page-authorization__container">
        <%- include('../../sections/authorization/authorization.tpl'); %>
        </div>
    </div>
</main>

<%- include('../../common.blocks/meta-footer/meta-footer.tpl'); %>
<!-- /Page: page-authorization -->