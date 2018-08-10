<% //var lang = JSON.parse(include('page-profile_lang_ru.json')); %>

<%- include('../../../common.blocks/meta-header/meta-header.tpl'); %>
<%- include('../../../common.blocks/page-header/page-header.tpl'); %>

<!-- Page: page-profile -->
<link rel="stylesheet" href="assets/pages/cabinet/page-profile.css">
<script src="assets/pages/cabinet/page-profile.js" defer></script>

<main class="page-profile bg-light">
    <div class="container py-4">
        <h1 class="page-realties__title text-center mb-4">Ваш профиль</h1>

        <div class="alert alert-info lead">
            <p class="mb-0">Анализ статистики показывает: <strong>объекты, у которых есть отзывы, получают в 2-5 раз больше бронирований</strong>. Вы можете получить ваши первые отзывы от своих друзей прямо сейчас.</p>
            <div class="text-center"><a href="reviews.html" class="nav-link">Узнайте как это сделать</a></div>
        </div>
        <div class="row">
            <div class="col-xl-3 col-lg-4 col-md-6">
                <div class="page-profile__form-change-languages">
                    <%- include('../../../forms/form-change-languages/form-change-languages.tpl'); %>
                </div>

                <div class="page-profile__form-change-password">
                    <%- include('../../../forms/form-change-password/form-change-password.tpl'); %>
                </div>
            </div>
            <div class="col-xl-9 col-lg-8 col-md-6">
                <div class="page-profile__form-change-personal-data">
                    <%- include('../../../forms/form-change-personal-data/form-change-personal-data.tpl'); %>
                </div>

                <form class="card my-4">
                    <h3 class="card-header lead font-weight-bold">Настройки сервиса</h3>
                    <div class="card-body">
                        <div class="row">
                            <div class="form-group col-md-6 col-lg-5">
                                <label for="inputState">Ваш язык по умолчанию</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <label class="input-group-text" for="inputGroupSelect01">
                                            <i class="icon icon__language"></i>
                                        </label>
                                    </div>
                                    <select class="custom-select" id="inputGroupSelect01">
                                        <option selected="">English</option>
                                        <option value="1">One</option>
                                        <option value="2">Two</option>
                                        <option value="3">Three</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="customCheckDisabled" disabled>
                                <label class="custom-control-label" for="customCheckDisabled">Не получать уведомления о моих объявлениях с сайта</label>
                            </div>
                        </div>
                        <div class="form-group mb-0">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="customCheckDisabled" disabled>
                                <label class="custom-control-label" for="customCheckDisabled">Не получать уведомления о интересных предложениях с сайта</label>
                            </div>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
</main>
<!-- /Page: page-profile -->

<%- include('../../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../../common.blocks/meta-footer/meta-footer.tpl'); %>