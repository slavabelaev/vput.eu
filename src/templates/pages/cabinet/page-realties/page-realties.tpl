<% //var lang = JSON.parse(include('page-realties_lang_ru.json')); %>

<%- include('../../../common.blocks/meta-header/meta-header.tpl'); %>
<%- include('../../../common.blocks/page-header/page-header.tpl'); %>

<!-- Page: page-realties -->
<link rel="stylesheet" href="assets/pages/site/page-realties.css">
<script src="assets/pages/site/page-realties.js" defer></script>

<main class="page-realties">
    <div class="container py-4">
        <h1 class="page-realties__title text-center mb-4">Ваши объявления</h1>
        <div class="row">
            <div class="col-xl-3 d-none d-xl-block">
                <aside class="cabinet-aside">
                    <nav class="nav flex-column nav-pills">
                        <a class="nav-link active" href="realties.html">Мои объявления</a>
                        <a class="nav-link" href="bookings.html">Бронирования</a>
                        <a class="nav-link" href="trips.html">Мои поездки <span class="badge badge-primary">5</span></a>
                        <a class="nav-link" href="profile.html">Профиль</a>
                        <a class="nav-link" href="transfers.html">Трансферы</a>
                        <a class="nav-link" href="balance.html">Баланс</a>
                        <a class="nav-link" href="partnership.html">Партнерская программа</a>
                        <a class="nav-link" href="reviews.html">Отзывы</a>
                        <a class="nav-link" href="referral-bookings.html">Бронирования рефералов</a>
                    </nav>
                </aside>
            </div>
            <div class="col-xl-9">
                <div class="alert alert-info mb-4">
                    <h2 class="h4 text-center">АКТУАЛЬНОСТЬ КАЛЕНДАРЯ</h2>
                    <div class="row">
                        <div class="col-lg-6">
                            <ol class="">
                                <li>Приведет на первую страницу в списке предложений</li>
                                <li>Избавит от неактуальных бронирований</li>
                            </ol>
                        </div>
                        <div class="col-lg-6">
                            <ul class="list-unstyled">
                                <li>Последнее обновление <time class="font-weight-bold">08-08-2018 14:48:46</time></li>
                                <li>Календарь в 3 предложениях не обновлялся более недели</li>
                            </ul>
                        </div>
                    </div>
                    <div class="text-center">
                        <a href="" class="btn btn-warning">Подтвердить актуальность календаря</a>
                    </div>
                </div>
                <ul class="row offer-item_has-rights_edit">
                    <li class="col-lg-4 col-md-6 mb-4">
                        <%- include('../../../common.blocks/offer-item/offer-item.tpl'); %>
                    </li>
                    <li class="col-lg-4 col-md-6 mb-4">
                        <%- include('../../../common.blocks/offer-item/offer-item.tpl'); %>
                    </li>
                    <li class="col-lg-4 col-md-6 mb-4">
                        <%- include('../../../common.blocks/offer-item/offer-item.tpl'); %>
                    </li>
                    <li class="col-lg-4 col-md-6 mb-4">
                        <%- include('../../../common.blocks/offer-item/offer-item.tpl'); %>
                    </li>
                    <li class="col-lg-4 col-md-6 mb-4">
                        <%- include('../../../common.blocks/offer-item/offer-item.tpl'); %>
                    </li>
                    <li class="col-lg-4 col-md-6 mb-4">
                        <%- include('../../../common.blocks/offer-item/offer-item.tpl'); %>
                    </li>
                </ul>
            </div>

        </div>
    </div>
</main>
<!-- /Page: page-realties -->

<%- include('../../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../../common.blocks/meta-footer/meta-footer.tpl'); %>