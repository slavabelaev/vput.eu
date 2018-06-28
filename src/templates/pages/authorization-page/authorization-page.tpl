<!-- Authorization page -->
<%- include('../../common.blocks/meta-header/meta-header.tpl'); %>

<main class="authorization-page">
    <div class="container">
        <a class="authorization-page__logo my-4" href="/"></a>
        <h1 class="text-center text-white mb-5">ВЫ НЕ ЗАРЕГИСТРИРОВАНЫ ИЛИ НЕ АВТОРИЗОВАНЫ</h1>
        <div class="authorization-page__container">
        <%- include('../../sections/authorization-or-registration/authorization-or-registration.tpl'); %>
        </div>
    </div>
</main>

<%- include('../../common.blocks/meta-footer/meta-footer.tpl'); %>
<!-- /Authorization page -->