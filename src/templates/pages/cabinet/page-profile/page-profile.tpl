<% //var lang = JSON.parse(include('page-profile_lang_ru.json')); %>

<%- include('../../../common.blocks/meta-header/meta-header.tpl'); %>
<div class="navbar-dark-md">
    <%- include('../../../common.blocks/page-header/page-header.tpl'); %>
</div>

<!-- Page: page-profile -->
<link rel="stylesheet" href="assets/pages/cabinet/page-profile.css">
<script src="assets/pages/cabinet/page-profile.js" defer></script>

<main class="page-profile">
    <header class="page-cabinet__header py-4">
        <div class="container">
            <h1 class="page-cabinet__title mb-0">Ваш профиль</h1>
        </div>
    </header>
    <div class="container py-4">
        <div class="alert alert-info lead mb-4">
            <p class="mb-0">Анализ статистики показывает: <strong>объекты, у которых есть отзывы, получают в 2-5 раз больше бронирований</strong>. Вы можете получить ваши первые отзывы от своих друзей прямо сейчас.</p>
            <div class="text-center"><a href="reviews.html" class="nav-link">Узнайте как это сделать</a></div>
        </div>
        <div class="row">
            <div class="col-xl-3 col-lg-4 col-md-6">
                <div class="page-profile__form-change-profile-picture mb-4">
                    <%- include('../../../forms/form-change-profile-picture/form-change-profile-picture.tpl'); %>
                </div>
                <div class="page-profile__form-change-languages mb-4">
                    <%- include('../../../forms/form-change-languages/form-change-languages.tpl'); %>
                </div>
                <div class="page-profile__form-change-password mb-4">
                    <%- include('../../../forms/form-change-password/form-change-password.tpl'); %>
                </div>
            </div>
            <div class="col-xl-9 col-lg-8 col-md-6">
                <div class="page-profile__form-change-personal-data mb-4">
                    <%- include('../../../forms/form-change-personal-data/form-change-personal-data.tpl'); %>
                </div>
                <div class="page-profile__form-service-settings mb-4">
                    <%- include('../../../forms/form-service-settings/form-service-settings.tpl'); %>
                </div>
            </div>
        </div>
    </div>
</main>
<!-- /Page: page-profile -->

<%- include('../../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../../common.blocks/meta-footer/meta-footer.tpl'); %>