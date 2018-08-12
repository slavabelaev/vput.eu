<% //var lang = JSON.parse(include('page-bookings_lang_ru.json')); %>

<%- include('../../../common.blocks/meta-header/meta-header.tpl'); %>
<%- include('../../../common.blocks/page-header/page-header.tpl'); %>

<!-- Page: page-bookings -->
<link rel="stylesheet" href="assets/pages/site/page-bookings.css">
<script src="assets/pages/site/page-bookings.js" defer></script>

<main class="page-bookings">
    <div class="container py-4">
        <h1 class="page-bookings__title text-center mb-4">Ваши бронирования</h1>
        <div class="row">
            <div class="col-xl-3 d-none d-xl-block">
                <aside class="page-bookings__aside">
                    <%- include('../../../common.blocks/cabinet-navigation/cabinet-navigation.tpl'); %>
                </aside>
            </div>
            <div class="col-xl-9">
                <ul class="row offer-item_has-rights_edit">
                    <li class="col-md-6 mb-4">
                        <div class="card">
                            <h3 class="lead card-header">№2573 | 4424 Название не указано</h3>
                            <%- include('../../../common.blocks/offer-item-carousel/offer-item-carousel.tpl'); %>
                            <div class="card-body">
                                <div class="alert alert-danger">Гость не оплатил счет в течение 48 часов</div>
                                <ul class="row">
                                    <li class="col-6">
                                        <div class="form-group mb-0">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <div class="input-group-text">
                                                        Заезд
                                                    </div>
                                                </div>
                                                <input type="text"
                                                       name="data[calendar][beginning_of_the_period]"
                                                       value="03-08-2016"
                                                       disabled
                                                       class="form-control">
                                            </div>
                                        </div>
                                    </li>
                                    <li class="col-6">
                                        <div class="form-group mb-0">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <div class="input-group-text">
                                                        Выезд
                                                    </div>
                                                </div>
                                                <input type="text"
                                                       name="data[calendar][beginning_of_the_period]"
                                                       value="03-08-2016"
                                                       disabled
                                                       class="form-control">
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <footer class="card-footer">
                                <div class="row align-items-center">
                                    <div class="col lead">11 ночей</div>
                                    <div class="col h3 mb-0 text-secondary text-right">€351</div>
                                </div>
                            </footer>
                            <footer class="card-footer">
                                <i class="icon icon__email mr-2"></i>Новых сообщений нет
                            </footer>
                            <footer class="card-footer text-right">
                                <a href="#" class="btn btn-dark">В архив</a>
                                <a href="#" class="btn btn-link">Подробнее</a>
                            </footer>
                        </div>
                    </li>
                    <li class="col-md-6 mb-4">
                        <div class="card">
                            <h3 class="lead card-header">№2573 | 4424 Название не указано</h3>
                            <%- include('../../../common.blocks/offer-item-carousel/offer-item-carousel.tpl'); %>
                            <div class="card-body">
                                <div class="alert alert-danger">Гость не оплатил счет в течение 48 часов</div>
                                <ul class="row">
                                    <li class="col-6">
                                        <div class="form-group mb-0">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <div class="input-group-text">
                                                        Заезд
                                                    </div>
                                                </div>
                                                <input type="text"
                                                       name="data[calendar][beginning_of_the_period]"
                                                       value="03-08-2016"
                                                       disabled
                                                       class="form-control">
                                            </div>
                                        </div>
                                    </li>
                                    <li class="col-6">
                                        <div class="form-group mb-0">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <div class="input-group-text">
                                                        Выезд
                                                    </div>
                                                </div>
                                                <input type="text"
                                                       name="data[calendar][beginning_of_the_period]"
                                                       value="03-08-2016"
                                                       disabled
                                                       class="form-control">
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <footer class="card-footer">
                                <div class="row align-items-center">
                                    <div class="col lead">11 ночей</div>
                                    <div class="col h3 mb-0 text-secondary text-right">€351</div>
                                </div>
                            </footer>
                            <footer class="card-footer">
                                <i class="icon icon__email mr-2"></i>Новых сообщений нет
                            </footer>
                            <footer class="card-footer text-right">
                                <a href="#" class="btn btn-dark">В архив</a>
                                <a href="#" class="btn btn-link">Подробнее</a>
                            </footer>
                        </div>
                    </li>
                </ul>
            </div>

        </div>
    </div>
</main>
<!-- /Page: page-bookings -->

<%- include('../../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../../common.blocks/meta-footer/meta-footer.tpl'); %>