<% //var lang = JSON.parse(include('page-balance_lang_ru.json')); %>

<%- include('../../../common.blocks/meta-header/meta-header.tpl'); %>
<%- include('../../../common.blocks/page-header/page-header.tpl'); %>

<!-- Page: page-balance -->
<link rel="stylesheet" href="assets/pages/cabinet/page-balance.css">
<script src="assets/pages/cabinet/page-balance.js" defer></script>

<main class="page-balance">
    <div class="container py-4">
        <h1 class="page-balance__title text-center mb-4">Ваш баланс</h1>

        <div class="alert alert-info lead">Текущая сумма: <b class="text-secondary">€0</b></div>
        <form class="card mb-4">
            <header class="card-header">Фильтр активных бонусов</header>
            <div class="card-body">
                <ul class="row">
                    <li class="col-lg-3 col-md-6">
                        <div class="form-group mb-md-0">
                            <label for="">Тип транзакции</label>
                            <select name="filters[type]"
                                    class="custom-select">
                                <option value="0">Все</option>
                                <option value="deposit">Начисление</option>
                                <option value="withdraw">Списание</option>
                            </select>
                        </div>
                    </li>
                    <li class="col-lg-3 col-md-6">
                        <div class="form-group mb-md-0">
                            <label for="">Период с</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="icon icon__calendar"></i>
                                    </div>
                                </div>
                                <input type="date"
                                       name="filters[startDate]"
                                       id=""
                                       class="form-control">
                            </div>
                        </div>
                    </li>
                    <li class="col-lg-3 col-md-6">
                        <div class="form-group mb-md-0">
                            <label for="">по</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <i class="icon icon__calendar"></i>
                                    </div>
                                </div>
                                <input type="date"
                                       name="filters[endDate]"
                                       class="form-control">
                            </div>
                        </div>
                    </li>
                    <li class="col-lg-3 col-md-6">
                        <div class="form-group mb-md-0">
                            <div class="mb-2">&nbsp;</div>
                            <button class="btn btn-primary">Фильтровать</button>
                            <button class="btn btn-danger"><i class="icon icon__close icon_size_16 icon_style_light"></i></button>
                        </div>
                    </li>
                </ul>
            </div>
        </form>

        <div class="table-responsive">
            <table class="table table-striped table-bordered table-adaptive">
                <thead>
                <tr>
                    <th class="table-balance__number">#</th>
                    <th>Номер транзакции</th>
                    <th>Сумма, €</th>
                    <th>Дата</th>
                    <th>Бронирование</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>655</td>
                    <td class="text-danger">-10</td>
                    <td>28-11-2017 12:08:31</td>
                    <td>убираем лишнее</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>373</td>
                    <td class="text-success">10</td>
                    <td>06-07-2017 18:19:57</td>
                    <td>Зачисление средств за бронирование №3956</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</main>
<!-- /Page: page-balance -->

<%- include('../../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../../common.blocks/meta-footer/meta-footer.tpl'); %>