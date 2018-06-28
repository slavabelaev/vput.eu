<%- include('../../common.blocks/meta-header/meta-header.tpl'); %>
<%- include('../../common.blocks/page-header/page-header.tpl'); %>

<!-- Page: Add page -->
<main class="add-page">
    <header class="add-page__header text-center py-5">
        <div class="container">
            <h1 class="add-page__title">Сдайте свое жилье</h1>
            <div class="add-page__lead lead">Качественно заполненное предложение повышает количество заказов</div>
            <div class="lead">ПРОЦЕСС ДОБАВЛЕНИЯ НЕ ЗАЙМЁТ БОЛЕЕ 5 МИНУТ</div>
        </div>
    </header>
    <div class="container py-5">
        <div class="row">
            <div class="col-lg-7">

                <ol class="accordion">
                    <li class="accordion__item">
                        <section class="accordion__item-card">
                            <h3 class="accordion__item-card-header collapsed"
                                data-toggle="collapse"
                                data-target=".accordion__item_number_1"
                                aria-expanded="false"
                                aria-controls="collapseThree">1. Основная информация</h3>
                            <div class="accordion__item-collapse accordion__item_number_1 collapse"
                                 aria-labelledby="headingThree"
                                 data-parent=".accordion">
                                <div class="accordion__item-content">

                                    <fieldset>
                                        <ul class="renting-form__form-group-list row">
                                            <li class="renting-form__form-group-list-item col">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Тип жилья</label>
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <div class="input-group-text"><span class="icon icon__home"></span></div>
                                                        </div>
                                                        <label for="offers-search-form__home" class="form-control">Дом</label>
                                                        <div class="input-group-append">
                                                            <div class="input-group-text">
                                                                <input type="checkbox" name="filters[realtyTypes][2]" id="offers-search-form__home">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col">
                                                <div class="form-group">
                                                    <label class="d-none d-sm-block">&nbsp;</label>
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <div class="input-group-text"><span class="icon icon__building"></span></div>
                                                        </div>
                                                        <label for="offers-search-form__apartament" class="form-control">Квартира</label>
                                                        <div class="input-group-append">
                                                            <div class="input-group-text">
                                                                <input type="checkbox" name="filters[realtyTypes][1]" id="offers-search-form__apartament">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col">
                                                <div class="form-group">
                                                    <label class="d-none d-sm-block">&nbsp;</label>
                                                    <div class="input-group">
                                                        <select class="custom-select" name="filters[bathRooms]">
                                                            <option disabled="disabled" selected="selected">Другое</option>
                                                            <option value="28">Комната</option>
                                                            <option value="29">Общая комната</option>
                                                            <option value="31">Гостиница</option>
                                                            <option value="33">Фургон</option>
                                                            <option value="34">Амбар</option>
                                                            <option value="37">Мельница</option>
                                                            <option value="39">Маяк</option>
                                                            <option value="40">Палатка</option>
                                                            <option value="20">Лофт</option>
                                                            <option value="18">Гостевой дом</option>
                                                            <option value="16">Яхта</option>
                                                            <option value="6">Бунгало</option>
                                                            <option value="7">Коттедж</option>
                                                            <option value="8">Мезонет</option>
                                                            <option value="9">Вилла</option>
                                                            <option value="10">Замок</option>
                                                            <option value="11">Шале</option>
                                                            <option value="13">Пентхаус</option>
                                                            <option value="14">Таунхаус</option>
                                                            <option value="15">Усадьба</option>
                                                            <option value="41">Домик на дереве</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Кол-во комнат</label>
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <div class="input-group-text"><span class="icon icon__door"></span></div>
                                                        </div>
                                                        <select class="custom-select" name="filters[rooms]">
                                                            <option value="1" selected>1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Вмещает гостей</label>
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <div class="input-group-text"><span class="icon icon__add-guest"></span></div>
                                                        </div>
                                                        <select class="custom-select" name="filters[bathRooms]">
                                                            <option value="1" selected>1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Мин. срок аренды</label>
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <div class="input-group-text"><span class="icon icon__calendar"></span></div>
                                                        </div>
                                                        <select class="custom-select" name="filters[bathRooms]">
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                            <option value="13">13</option>
                                                            <option value="14">14</option>
                                                            <option value="15">15</option>
                                                            <option value="16">16</option>
                                                            <option value="17">17</option>
                                                            <option value="18">18</option>
                                                            <option value="19">19</option>
                                                            <option value="20">20</option>
                                                            <option value="21">21</option>
                                                            <option value="22">22</option>
                                                            <option value="23">23</option>
                                                            <option value="24">24</option>
                                                            <option value="25">25</option>
                                                            <option value="26">26</option>
                                                            <option value="27">27</option>
                                                            <option value="28">28</option>
                                                            <option value="29">29</option>
                                                            <option value="30">30</option>
                                                            <option value="31">31</option>
                                                            <option value="60">2 мес.</option>
                                                            <option value="90">3 мес.</option>
                                                            <option value="120">4 мес.</option>
                                                            <option value="150">5 мес.</option>
                                                            <option value="180">6 мес.</option>
                                                            <option value="210">7 мес.</option>
                                                            <option value="240">8 мес.</option>
                                                            <option value="270">9 мес.</option>
                                                            <option value="300">10 мес.</option>
                                                            <option value="330">11 мес.</option>
                                                            <option value="365">12 мес.</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </fieldset>

                                    <div class="text-center">
                                        <button class="btn btn-success">Далее</button>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </li>
                    <li class="accordion__item">
                        <section class="accordion__item-card">
                            <h3 class="accordion__item-card-header collapsed"
                                data-toggle="collapse"
                                data-target=".accordion__item_number_2"
                                aria-expanded="false"
                                aria-controls="collapseThree">2. Цены</h3>
                            <div class="accordion__item-collapse accordion__item_number_2 collapse"
                                 aria-labelledby="headingThree"
                                 data-parent=".accordion">
                                <div class="accordion__item-content">
                                    <figure class="alert alert-warning" role="alert">
                                        Цена включает 9-12% за услуги V.P.U.T.
                                        <a href="/commission/" target="_blank">Почему мы берем комиссию?</a>
                                    </figure>

                                    <ul class="renting-form__form-group-list row">
                                        <li class="renting-form__form-group-list-item col">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Цена за ночь</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">€</div>
                                                    </div>
                                                    <input type="number"
                                                           value="0"
                                                           min="0"
                                                           max="99999"
                                                           disabled
                                                           class="form-control"
                                                           placeholder="">
                                                </div>
                                            </div>
                                        </li>
                                        <li class="renting-form__form-group-list-item col">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Вы получите</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">€</div>
                                                    </div>
                                                    <input type="number"
                                                           value="0"
                                                           min="0"
                                                           max="99999"
                                                           required
                                                           class="form-control"
                                                           placeholder="">
                                                </div>
                                            </div>
                                        </li>
                                        <li class="renting-form__form-group-list-item col">
                                            <div class="form-group">
                                                <label class="d-none d-sm-block">&nbsp;</label>
                                                <div class="input-group">
                                                    <button class="btn btn-success w-100">Сохранить</button>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>

                                    <figure class="alert alert-info" role="alert">
                                        <div class="mb-3">Основная цена указывается для всего года. Но также можете указать индивидуальную цену для любого периода.</div>
                                        <a href="#"
                                           class="btn btn-sm btn-outline-primary collapsed"
                                           data-target=".renting-form__additional-prices"
                                           data-toggle="collapse"
                                           role="button"
                                           aria-expanded="false"
                                           aria-controls="collapseExample">Добавить дополнительные цены!</a>
                                    </figure>

                                    <fieldset class="renting-form__additional-prices collapse">
                                        <legend>Дополнительные цены</legend>
                                        <div class="row">
                                            <div class="form-group col">
                                                <label for="exampleInputEmail1">Начало периода</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text"><i class="icon icon__calendar"></i></div>
                                                    </div>
                                                    <input type="date"
                                                           class="form-control"
                                                           placeholder="">
                                                </div>
                                            </div>
                                            <div class="form-group col">
                                                <label for="exampleInputEmail1">Конец периода</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text"><i class="icon icon__calendar"></i></div>
                                                    </div>
                                                    <input type="date"
                                                           class="form-control"
                                                           placeholder="">
                                                </div>
                                            </div>
                                            <div class="form-group col"></div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col">
                                                <label for="exampleInputEmail1">Цена за ночь</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">€</div>
                                                    </div>
                                                    <input type="number"
                                                           value="0"
                                                           disabled
                                                           class="form-control"
                                                           placeholder="">
                                                </div>
                                            </div>
                                            <div class="form-group col">
                                                <label for="exampleInputEmail1">Вы получите</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">€</div>
                                                    </div>
                                                    <input type="number"
                                                           value="0"
                                                           class="form-control"
                                                           placeholder="">
                                                </div>
                                            </div>
                                            <div class="form-group col"></div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col">
                                                <button class="btn btn-success w-100">Сохранить</button>
                                            </div>
                                            <div class="form-group col">
                                                <button class="btn btn-danger w-100">Отмена</button>
                                            </div>
                                            <div class="form-group col"></div>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <legend>Скидки</legend>
                                        <div class="row">
                                            <div class="form-group col">
                                                <label for="exampleInputEmail1">Понедельная
                                                    <i class="icon icon__information ml-2"
                                                       data-toggle="tooltip"
                                                       data-placement="right"
                                                       data-html="true"
                                                       title="Данная скидка подразумевает снижение стоимости бронирования для гостя в зависимости от длины выбранного периода. Понедельная скидка будет установлена для 7-ми дневного и более периода."></i>
                                                </label>
                                                <div class="input-group">
                                                    <select class="custom-select" name="filters[bathRooms]">
                                                        <option value="0" selected>0</option>
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                        <option value="6">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                        <option value="9">9</option>
                                                        <option value="10">10</option>
                                                        <option value="11">11</option>
                                                        <option value="12">12</option>
                                                        <option value="13">13</option>
                                                        <option value="14">14</option>
                                                        <option value="15">15</option>
                                                        <option value="16">16</option>
                                                        <option value="17">17</option>
                                                        <option value="18">18</option>
                                                        <option value="19">19</option>
                                                        <option value="20">20</option>
                                                        <option value="21">21</option>
                                                        <option value="22">22</option>
                                                        <option value="23">23</option>
                                                        <option value="24">24</option>
                                                        <option value="25">25</option>
                                                        <option value="26">26</option>
                                                        <option value="27">27</option>
                                                        <option value="28">28</option>
                                                        <option value="29">29</option>
                                                        <option value="30">30</option>
                                                    </select>
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">%</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group col">
                                                <label for="exampleInputEmail1">Помесячная
                                                    <i class="icon icon__information ml-2"
                                                       data-toggle="tooltip"
                                                       data-placement="right"
                                                       data-html="true"
                                                       title="Данная скидка подразумевает снижение стоимости бронирования для гостя в зависимости от длины выбранного периода. Помесячная скидка будет установлена для 30-и дневного и более периода."></i>
                                                </label>
                                                <div class="input-group">
                                                    <select class="custom-select" name="filters[bathRooms]">
                                                        <option value="0" selected>0</option>
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                        <option value="6">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                        <option value="9">9</option>
                                                        <option value="10">10</option>
                                                        <option value="11">11</option>
                                                        <option value="12">12</option>
                                                        <option value="13">13</option>
                                                        <option value="14">14</option>
                                                        <option value="15">15</option>
                                                        <option value="16">16</option>
                                                        <option value="17">17</option>
                                                        <option value="18">18</option>
                                                        <option value="19">19</option>
                                                        <option value="20">20</option>
                                                        <option value="21">21</option>
                                                        <option value="22">22</option>
                                                        <option value="23">23</option>
                                                        <option value="24">24</option>
                                                        <option value="25">25</option>
                                                        <option value="26">26</option>
                                                        <option value="27">27</option>
                                                        <option value="28">28</option>
                                                        <option value="29">29</option>
                                                        <option value="30">30</option>
                                                    </select>
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">%</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group col"></div>
                                        </div>
                                    </fieldset>


                                    <fieldset>
                                        <legend>Дополнительные опции</legend>
                                        <div class="row">
                                            <div class="form-group col">
                                                <label for="exampleInputEmail1">Плата за финальную уборку</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">€</div>
                                                    </div>
                                                    <input type="number"
                                                           value="0"
                                                           min="0"
                                                           max="9999"
                                                           class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group col">
                                                <label for="exampleInputEmail1">Предоплата
                                                    <i class="icon icon__information ml-2"
                                                       data-toggle="tooltip"
                                                       data-placement="right"
                                                       data-html="true"
                                                       title="Cумма первой оплаты, которую необходимо совершить Гостю непосредственно на сайте.Обычно она равняется сумме «невозвратного депозита». В случае, если у вас нет возможности принять деньги наличными на месте, вы можете указать 100% предоплаты, чтобы после заселения Гостя получить все деньги от компании V.P.U.T.  банковским переводом. Это никак не влияет на сумму невозвратного депозита."></i>
                                                </label>
                                                <div class="input-group">
                                                    <select class="custom-select"
                                                            name="filters[bathRooms]">
                                                        <option>Только услуги VPUT</option>
                                                        <option>25</option>
                                                        <option>35</option>
                                                        <option>45</option>
                                                        <option selected="selected">50</option>
                                                        <option>60</option>
                                                        <option>70</option>
                                                        <option>80</option>
                                                        <option>90</option>
                                                        <option>100</option>
                                                    </select>
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">%</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group col">
                                                <label for="exampleInputEmail1">Невозвратный депозит
                                                    <i class="icon icon__information ml-2"
                                                       data-toggle="tooltip"
                                                       data-placement="right"
                                                       data-html="true"
                                                       title="Это сумма, которая не возвращается Гостю в случае одностороннего отказа от бронирования с его стороны. Минимальная сумма невозвратного депозита равняется стоимости услуг V.P.U.T. Вы, на свое усмотрение может увеличивать процент невозвратного депозита. Разница между общей суммой невозвратного депозита и стоимостью услуг V.P.U.T  является компенсацией владельцу в случае одностороннего отказа гостя от бронирования."></i>
                                                </label>
                                                <div class="input-group">
                                                    <select class="custom-select"
                                                            name="filters[bathRooms]">
                                                        <option>Только услуги VPUT</option>
                                                        <option>25</option>
                                                        <option>35</option>
                                                        <option>45</option>
                                                        <option selected="selected">50</option>
                                                    </select>
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">%</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <figure class="alert alert-info" role="alert">
                                        Выбирайте минимально подходящую предоплату. Это выгодно вам, так как за вывод средств с V.P.U.T. по безналичному расчету взимается банковская комиссия расчитанная согласно
                                        <a href="/withdraw/" target="_blank">следующим правилам</a>.
                                    </figure>


                                    <div class="text-center">
                                        <button class="btn btn-success">Далее</button>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </li>
                    <li class="accordion__item">
                        <section class="accordion__item-card">
                            <h3 class="accordion__item-card-header collapsed"
                                data-toggle="collapse"
                                data-target=".accordion__item_number_3"
                                aria-expanded="false"
                                aria-controls="collapseThree">3. Спальные места</h3>
                            <div class="accordion__item-collapse accordion__item_number_3 collapse"
                                 aria-labelledby="headingThree"
                                 data-parent=".accordion">
                                <div class="accordion__item-content">
                                    <ul class="renting-form__form-group-list row">
                                        <li class="renting-form__form-group-list-item col">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Двуспальная раздвижная</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">
                                                            <i class="icon icon__beds"></i>
                                                        </div>
                                                    </div>
                                                    <select class="custom-select" name="filters[bathRooms]">
                                                        <option value="0">Нет</option>
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5+</option>
                                                    </select>
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">шт.</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="renting-form__form-group-list-item col">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Кресло раскладное</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">
                                                            <i class="icon icon__lounge"></i>
                                                        </div>
                                                    </div>
                                                    <select class="custom-select" name="filters[bathRooms]">
                                                        <option value="0">Нет</option>
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5+</option>
                                                    </select>
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">шт.</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="renting-form__form-group-list-item col">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Двуспальная сплошная</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">
                                                            <i class="icon icon__bed"></i>
                                                        </div>
                                                    </div>
                                                    <select class="custom-select" name="filters[bathRooms]">
                                                        <option value="0">Нет</option>
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5+</option>
                                                    </select>
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">шт.</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="renting-form__form-group-list-item col">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Детская кроватка</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">
                                                            <i class="icon icon__crib"></i>
                                                        </div>
                                                    </div>
                                                    <select class="custom-select" name="filters[bathRooms]">
                                                        <option value="0">Нет</option>
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5+</option>
                                                    </select>
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">шт.</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="renting-form__form-group-list-item col">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Диван раскладной</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">
                                                            <i class="icon icon__sofa"></i>
                                                        </div>
                                                    </div>
                                                    <select class="custom-select" name="filters[bathRooms]">
                                                        <option value="0">Нет</option>
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5+</option>
                                                    </select>
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">шт.</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="renting-form__form-group-list-item col">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Односпальная кровать</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">
                                                            <i class="icon icon__single-bed"></i>
                                                        </div>
                                                    </div>
                                                    <select class="custom-select" name="filters[bathRooms]">
                                                        <option value="0">Нет</option>
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5+</option>
                                                    </select>
                                                    <div class="input-group-append">
                                                        <div class="input-group-text">шт.</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>

                                    <div class="text-center">
                                        <button class="btn btn-success">Далее</button>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </li>
                    <li class="accordion__item">
                        <section class="accordion__item-card">
                            <h3 class="accordion__item-card-header collapsed"
                                data-toggle="collapse"
                                data-target=".accordion__item_number_4"
                                aria-expanded="false"
                                aria-controls="collapseThree">4. Информация о жилье</h3>
                            <div class="accordion__item-collapse accordion__item_number_4 collapse"
                                 aria-labelledby="headingThree"
                                 data-parent=".accordion">
                                <div class="accordion__item-content">
                                    <fieldset>
                                        <legend>Правила заселения и выселения</legend>
                                        <ul class="renting-form__form-group-list row">
                                            <li class="renting-form__form-group-list-item col">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Заселение</label>
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <div class="input-group-text">
                                                                <i class="icon icon__time-in"></i>
                                                            </div>
                                                        </div>
                                                        <select class="custom-select" name="filters[bathRooms]">
                                                            <option value="0">00:00</option>
                                                            <option value="1">1:00</option>
                                                            <option value="2">2:00</option>
                                                            <option value="3">3:00</option>
                                                            <option value="4">4:00</option>
                                                            <option value="5">5:00</option>
                                                            <option value="6">6:00</option>
                                                            <option value="7">7:00</option>
                                                            <option value="8">8:00</option>
                                                            <option value="9">9:00</option>
                                                            <option value="10">10:00</option>
                                                            <option value="11">11:00</option>
                                                            <option value="12">12:00</option>
                                                            <option value="13" selected>13:00</option>
                                                            <option value="14">14:00</option>
                                                            <option value="15">15:00</option>
                                                            <option value="16">16:00</option>
                                                            <option value="17">17:00</option>
                                                            <option value="18">18:00</option>
                                                            <option value="19">19:00</option>
                                                            <option value="20">20:00</option>
                                                            <option value="21">21:00</option>
                                                            <option value="22">22:00</option>
                                                            <option value="23">23:00</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Выселение</label>
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <div class="input-group-text">
                                                                <i class="icon icon__time-out"></i>
                                                            </div>
                                                        </div>
                                                        <select class="custom-select" name="filters[bathRooms]">
                                                            <option value="0">00:00</option>
                                                            <option value="1">1:00</option>
                                                            <option value="2">2:00</option>
                                                            <option value="3">3:00</option>
                                                            <option value="4">4:00</option>
                                                            <option value="5">5:00</option>
                                                            <option value="6">6:00</option>
                                                            <option value="7">7:00</option>
                                                            <option value="8">8:00</option>
                                                            <option value="9">9:00</option>
                                                            <option value="10">10:00</option>
                                                            <option value="11">11:00</option>
                                                            <option value="12" selected>12:00</option>
                                                            <option value="13">13:00</option>
                                                            <option value="14">14:00</option>
                                                            <option value="15">15:00</option>
                                                            <option value="16">16:00</option>
                                                            <option value="17">17:00</option>
                                                            <option value="18">18:00</option>
                                                            <option value="19">19:00</option>
                                                            <option value="20">20:00</option>
                                                            <option value="21">21:00</option>
                                                            <option value="22">22:00</option>
                                                            <option value="23">23:00</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">&nbsp;</label>
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="filters[parameters][259]" class="custom-control-input" id="offers-search-form__spa">
                                                        <label class="custom-control-label" for="offers-search-form__spa">В любое время</label>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </fieldset>

                                    <fieldset>
                                        <legend>Доплата за дополнительного гостя</legend>
                                        <ul class="renting-form__form-group-list row">
                                            <li class="renting-form__form-group-list-item col">
                                                <div class="form-group">
                                                    <div class="input-group">
                                                        <label for="offers-search-form__apartament" class="form-control">Нельзя</label>
                                                        <div class="input-group-append">
                                                            <div class="input-group-text">
                                                                <input type="radio" name="filters[realtyTypes][1]" id="offers-search-form__apartament">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <small class="form-text text-muted">Больше указанного запрещено</small>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col">
                                                <div class="form-group">
                                                    <div class="input-group">
                                                        <label for="offers-search-form__apartament" class="form-control">Бесплатно</label>
                                                        <div class="input-group-append">
                                                            <div class="input-group-text">
                                                                <input type="radio" name="filters[realtyTypes][1]" id="offers-search-form__apartament">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <small class="form-text text-muted">Более указанного можно</small>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col">
                                                <div class="form-group">
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <div class="input-group-text">€</div>
                                                        </div>
                                                        <select name="" class="custom-select">
                                                            <option value="0">0</option>
                                                            <option value="10">10</option>
                                                            <option value="20">20</option>
                                                            <option value="30">30</option>
                                                            <option value="40">40</option>
                                                            <option value="50">50</option>
                                                        </select>
                                                    </div>
                                                    <small class="form-text text-muted">Доплата за каждого гостя</small>
                                                </div>
                                            </li>
                                        </ul>
                                    </fieldset>

                                    <fieldset>
                                        <legend>Правила отмены бронирования</legend>
                                        <ul class="renting-form__form-group-list row">
                                            <li class="renting-form__form-group-list-item col">
                                                <div class="form-group">
                                                    <div class="input-group">
                                                        <select name="" class="custom-select">
                                                            <option value="standard" selected>Стандартные</option>
                                                            <option value="longer-term">Долгосрочные</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col"></li>
                                            <li class="renting-form__form-group-list-item col"></li>
                                        </ul>
                                    </fieldset>

                                    <figure class="alert alert-info">
                                        В случае отмены бронирования этого предложения любые вопросы, связанные с финансовой компенсацией, будут разрешаться согласно <a href="/booking_cancelation_rules/" target="_blank">выбранному варианту правил отмены бронирования</a>.
                                    </figure>
                                </div>
                            </div>
                        </section>
                    </li>
                    <li class="accordion__item">
                        <section class="accordion__item-card">
                            <h3 class="accordion__item-card-header collapsed"
                                data-toggle="collapse"
                                data-target=".accordion__item_number_5"
                                aria-expanded="false"
                                aria-controls="collapseThree">5. Правила дома</h3>
                            <div class="accordion__item-collapse accordion__item_number_5 collapse"
                                 aria-labelledby="headingThree"
                                 data-parent=".accordion">
                                <div class="accordion__item-content">
                                    <fieldset>
                                        <ul class="renting-form__form-group-list row">
                                            <li class="renting-form__form-group-list-item col">
                                                <div class="form-group">
                                                    <label for="">С детьми</label>
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <div class="input-group-text">
                                                                <i class="icon icon__children"></i>
                                                            </div>
                                                        </div>
                                                        <select name="" id="" class="custom-select">
                                                            <option value="">Запрещено</option>
                                                            <option value="">Разрешено</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col">
                                                <div class="form-group">
                                                    <label for="">Курить</label>
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <div class="input-group-text">
                                                                <i class="icon icon__smoke"></i>
                                                            </div>
                                                        </div>
                                                        <select name="" id="" class="custom-select">
                                                            <option value="">Запрещено</option>
                                                            <option value="">Разрешено</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col">
                                                <div class="form-group">
                                                    <label for="">Питомцы</label>
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <div class="input-group-text">
                                                                <i class="icon icon__pets"></i>
                                                            </div>
                                                        </div>
                                                        <select name="" id="" class="custom-select">
                                                            <option value="">Запрещено</option>
                                                            <option value="">Разрешено</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col">
                                                <div class="form-group">
                                                    <label for="">Условия для инвалидов</label>
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <div class="input-group-text">
                                                                <i class="icon icon__disabled"></i>
                                                            </div>
                                                        </div>
                                                        <select name="" id="" class="custom-select">
                                                            <option value="">Нет</option>
                                                            <option value="">Пандус</option>
                                                            <option value="">Грузовой лифт</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-8">
                                                <div class="form-group mt-2">
                                                    <textarea name=""
                                                              class="form-control" rows="2"></textarea>
                                                </div>
                                            </li>
                                        </ul>
                                    </fieldset>

                                    <div class="text-center">
                                        <button class="btn btn-success">Далее</button>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </li>
                    <li class="accordion__item">
                        <section class="accordion__item-card">
                            <h3 class="accordion__item-card-header collapsed"
                                data-toggle="collapse"
                                data-target=".accordion__item_number_6"
                                aria-expanded="false"
                                aria-controls="collapseThree">6. Описание</h3>
                            <div class="accordion__item-collapse accordion__item_number_6 collapse"
                                 aria-labelledby="headingThree"
                                 data-parent=".accordion">
                                <div class="accordion__item-content">
                                    <fieldset>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <input type="text"
                                                       placeholder="Название объекта"
                                                       class="form-control">
                                            </div>
                                            <div class="text-right">
                                                <small class="form-text text-muted">50 СИМВОЛОВ ОСТАЛОСЬ
                                                </small>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <textarea name=""
                                                          rows="8"
                                                          class="form-control"></textarea>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <legend>Дополнительная информация</legend>

                                        <div class="row">
                                            <div class="col-5">
                                                <ul class="renting-form__form-group-list row">
                                                    <li class="renting-form__form-group-list-item col">
                                                        <div class="form-group">
                                                            <label for="">Балкон</label>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <div class="input-group-text">
                                                                        <i class="icon icon__balcony"></i>
                                                                    </div>
                                                                </div>
                                                                <select name="" id="" class="custom-select">
                                                                    <option disabled selected>Выбрать</option>
                                                                    <option>Есть</option>
                                                                    <option>Нет</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="renting-form__form-group-list-item col">
                                                        <div class="form-group">
                                                            <label for="">Вид с окон</label>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <div class="input-group-text">
                                                                        <i class="icon icon__window"></i>
                                                                    </div>
                                                                </div>
                                                                <input type="text"
                                                                       class="form-control"
                                                                       placeholder="Море, горы, бассейн">
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="renting-form__form-group-list-item col">
                                                        <div class="form-group">
                                                            <label for="">Этажность</label>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <div class="input-group-text">
                                                                        <i class="icon icon__stairs"></i>
                                                                    </div>
                                                                </div>
                                                                <select name="" id="" class="custom-select">
                                                                    <option disabled selected>Ваш</option>
                                                                    <option value="">1</option>
                                                                    <option value="">2</option>
                                                                    <option value="">3</option>
                                                                    <option value="">4</option>
                                                                    <option value="">5</option>
                                                                    <option value="">6</option>
                                                                    <option value="">7</option>
                                                                    <option value="">8</option>
                                                                    <option value="">9</option>
                                                                    <option value="">10</option>
                                                                    <option value="">11</option>
                                                                    <option value="">12</option>
                                                                    <option value="">13</option>
                                                                    <option value="">14</option>
                                                                </select>
                                                                <select name="" id="" class="custom-select">
                                                                    <option disabled selected>Всего</option>
                                                                    <option value="">1</option>
                                                                    <option value="">2</option>
                                                                    <option value="">3</option>
                                                                    <option value="">4</option>
                                                                    <option value="">5</option>
                                                                    <option value="">6</option>
                                                                    <option value="">7</option>
                                                                    <option value="">8</option>
                                                                    <option value="">9</option>
                                                                    <option value="">10</option>
                                                                    <option value="">11</option>
                                                                    <option value="">12</option>
                                                                    <option value="">13</option>
                                                                    <option value="">14</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="renting-form__form-group-list-item col">
                                                        <div class="form-group">
                                                            <label for="">Лифт</label>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <div class="input-group-text">
                                                                        <i class="icon icon__elevator"></i>
                                                                    </div>
                                                                </div>
                                                                <select name="" id="" class="custom-select">
                                                                    <option disabled selected>Выбрать</option>
                                                                    <option>Есть</option>
                                                                    <option>Нет</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="renting-form__form-group-list-item col">
                                                        <div class="form-group">
                                                            <label for="">Ванные комнаты</label>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <div class="input-group-text">
                                                                        <i class="icon icon__bathroom"></i>
                                                                    </div>
                                                                </div>
                                                                <select name="" id="" class="custom-select">
                                                                    <option value="0">0</option>
                                                                    <option value="1">1</option>
                                                                    <option value="2">2</option>
                                                                    <option value="3">3</option>
                                                                    <option value="4">4</option>
                                                                    <option value="5">5</option>
                                                                    <option value="6">6</option>
                                                                    <option value="7">7</option>
                                                                    <option value="8">8</option>
                                                                    <option value="9">9</option>
                                                                    <option value="10">10</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="renting-form__form-group-list-item col">
                                                        <div class="form-group">
                                                            <label for="">Уборка</label>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <div class="input-group-text">
                                                                        <i class="icon icon__cleaning"></i>
                                                                    </div>
                                                                </div>
                                                                <select name="" id="" class="custom-select">
                                                                    <option disabled selected>Выбрать</option>
                                                                    <option>1 раз в неделю</option>
                                                                    <option>2 раза в неделю</option>
                                                                    <option>Каждый день</option>
                                                                    <option>Не предусмотрена</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="renting-form__form-group-list-item col">
                                                        <div class="form-group">
                                                            <label for="">Заказать уборку</label>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <div class="input-group-text">
                                                                        <i class="icon icon__bucket"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="input-group-prepend">
                                                                    <div class="input-group-text">€</div>
                                                                </div>
                                                                <input type="number"
                                                                       value="0"
                                                                       min="0"
                                                                       max="99999"
                                                                       class="form-control">
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="renting-form__form-group-list-item col">
                                                        <div class="form-group">
                                                            <label for="">Смена белья</label>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <div class="input-group-text">
                                                                        <i class="icon icon__towel"></i>
                                                                    </div>
                                                                </div>
                                                                <select name="" id="" class="custom-select">
                                                                    <option disabled selected>Выбрать</option>
                                                                    <option>1 раз в неделю</option>
                                                                    <option>2 раза в неделю</option>
                                                                    <option>Каждый день</option>
                                                                    <option>Не предусмотрена</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="renting-form__form-group-list-item col">
                                                        <div class="form-group">
                                                            <label for="">Заказать смену белья</label>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <div class="input-group-text">
                                                                        <i class="icon icon__hot-towel"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="input-group-prepend">
                                                                    <div class="input-group-text">€</div>
                                                                </div>
                                                                <input type="number"
                                                                       value="0"
                                                                       min="0"
                                                                       max="99999"
                                                                       class="form-control">
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="renting-form__form-group-list-item col">
                                                        <div class="form-group">
                                                            <label for="">Гарантийный депозит</label>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <div class="input-group-text">
                                                                        <i class="icon icon__safe-transaction"></i>
                                                                    </div>
                                                                </div>
                                                                <div class="input-group-prepend">
                                                                    <div class="input-group-text">€</div>
                                                                </div>
                                                                <input type="number"
                                                                       value="0"
                                                                       min="0"
                                                                       max="99999"
                                                                       class="form-control">
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="renting-form__form-group-list-item col">
                                                        <div class="form-group">
                                                            <label for="">Завтрак</label>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <div class="input-group-text">
                                                                        <i class="icon icon__breakfast"></i>
                                                                    </div>
                                                                </div>
                                                                <select name="" id="" class="custom-select">
                                                                    <option disabled selected>Выбрать</option>
                                                                    <option>Каждый день</option>
                                                                    <option>Не предусмотрен</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="renting-form__form-group-list-item col">
                                                        <div class="form-group">
                                                            <label for="">Интернет</label>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <div class="input-group-text">
                                                                        <i class="icon icon__wifi"></i>
                                                                    </div>
                                                                </div>
                                                                <select name="" id="" class="custom-select">
                                                                    <option disabled selected>Выбрать</option>
                                                                    <option>Нет</option>
                                                                    <option>Бесплатно</option>
                                                                    <option>За доп. плату</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="renting-form__form-group-list-item col">
                                                        <div class="form-group">
                                                            <label for="">Парковка</label>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <div class="input-group-text">
                                                                        <i class="icon icon__parking"></i>
                                                                    </div>
                                                                </div>
                                                                <select name="" id="" class="custom-select">
                                                                    <option disabled selected>Выбрать</option>
                                                                    <option>Нет парковки</option>
                                                                    <option>Бесплатно</option>
                                                                    <option>Платно</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-2"></div>
                                            <div class="col-5">
                                                <ul class="renting-form__form-group-list row">
                                                    <li class="renting-form__form-group-list-item col">
                                                        <div class="form-group">
                                                            <label for="">Автобусная остановка</label>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <div class="input-group-text">
                                                                        <i class="icon icon__bus"></i>
                                                                    </div>
                                                                </div>
                                                                <input type="number"
                                                                       value="0"
                                                                       min="0"
                                                                       class="form-control">
                                                                <select name="" id="" class="renting-form__size-select custom-select">
                                                                    <option value="">м</option>
                                                                    <option value="">км</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="renting-form__form-group-list-item col">
                                                        <div class="form-group">
                                                            <label for="">Ресторан</label>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <div class="input-group-text">
                                                                        <i class="icon icon__cutlery"></i>
                                                                    </div>
                                                                </div>
                                                                <input type="number"
                                                                       value="0"
                                                                       min="0"
                                                                       class="form-control">
                                                                <select name="" id="" class="renting-form__size-select custom-select">
                                                                    <option value="">м</option>
                                                                    <option value="">км</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="renting-form__form-group-list-item col">
                                                        <div class="form-group">
                                                            <label for="">Пляж</label>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <div class="input-group-text">
                                                                        <i class="icon icon__beach"></i>
                                                                    </div>
                                                                </div>
                                                                <input type="number"
                                                                       value="0"
                                                                       min="0"
                                                                       class="form-control">
                                                                <select name="" id="" class="renting-form__size-select custom-select">
                                                                    <option value="">м</option>
                                                                    <option value="">км</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="renting-form__form-group-list-item col">
                                                        <div class="form-group">
                                                            <label for="">Подъемник</label>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <div class="input-group-text">
                                                                        <i class="icon icon__lift"></i>
                                                                    </div>
                                                                </div>
                                                                <input type="number"
                                                                       value="0"
                                                                       min="0"
                                                                       class="form-control">
                                                                <select name="" id="" class="renting-form__size-select custom-select">
                                                                    <option value="">м</option>
                                                                    <option value="">км</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="renting-form__form-group-list-item col">
                                                        <div class="form-group">
                                                            <label for="">Аэропорт</label>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <div class="input-group-text">
                                                                        <i class="icon icon__airplane"></i>
                                                                    </div>
                                                                </div>
                                                                <input type="number"
                                                                       value="0"
                                                                       min="0"
                                                                       class="form-control">
                                                                <select name="" id="" class="renting-form__size-select custom-select">
                                                                    <option value="">м</option>
                                                                    <option value="">км</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="renting-form__form-group-list-item col">
                                                        <div class="form-group">
                                                            <label for="">Банкомат</label>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <div class="input-group-text">
                                                                        <i class="icon icon__atm"></i>
                                                                    </div>
                                                                </div>
                                                                <input type="number"
                                                                       value="0"
                                                                       min="0"
                                                                       class="form-control">
                                                                <select name="" id="" class="renting-form__size-select custom-select">
                                                                    <option value="">м</option>
                                                                    <option value="">км</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="renting-form__form-group-list-item col">
                                                        <div class="form-group">
                                                            <label for="">Центр города</label>
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <div class="input-group-text">
                                                                        <i class="icon icon__pin"></i>
                                                                    </div>
                                                                </div>
                                                                <input type="number"
                                                                       value="0"
                                                                       class="form-control">
                                                                <select name="" id="" class="renting-form__size-select custom-select">
                                                                    <option value="">м</option>
                                                                    <option value="">км</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="renting-form__form-group-list-item col">
                                                        <div class="form-group">
                                                            <label for="">Индивидуальный ID</label>
                                                            <div class="input-group">
                                                                <input type="number"
                                                                       value="0"
                                                                       min="0"
                                                                       class="form-control">
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                        </section>
                    </li>
                    <li class="accordion__item">
                        <section class="accordion__item-card">
                            <h3 class="accordion__item-card-header collapsed"
                                data-toggle="collapse"
                                data-target=".accordion__item_number_7"
                                aria-expanded="false"
                                aria-controls="collapseThree">7. Удобства</h3>
                            <div class="accordion__item-collapse accordion__item_number_7 collapse"
                                 aria-labelledby="headingThree"
                                 data-parent=".accordion">
                                <div class="accordion__item-content">
                                    <fieldset>
                                        <ul class="renting-form__form-group-list row">
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Парковка</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Бассейн</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">СПА</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Рецепция</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Внутренний бассейн</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Медицинский кабинет</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Душевая кабина</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Охрана</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Джакузи</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Парикмахерская</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Ванна</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Детская площадка</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Сауна</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Пул-бар</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Прачечная</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Сад</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Фитнес</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Лобби-бар</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Барбекю</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Ресторан</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Кабельное ТВ</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Кондиционер</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Плита</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Холодильник</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Телевизор</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Камин</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Микроволновая печь</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Стиральная машина</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Сейф</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Чайник</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Сушилка</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Игровая приставка</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Соковыжималка</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Посудомоечная машина</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Утюг</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Тостер</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Духовка</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Гладильная доска</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Блендер</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Кофеварка</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-6">
                                                <div class="form-group">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox"
                                                               name="filters[parameters][254]"
                                                               class="custom-control-input"
                                                               id="">
                                                        <label class="custom-control-label"
                                                               for="">Фен</label>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </fieldset>
                                </div>
                            </div>
                        </section>
                    </li>
                    <li class="accordion__item">
                        <section class="accordion__item-card">
                            <h3 class="accordion__item-card-header collapsed"
                                data-toggle="collapse"
                                data-target=".accordion__item_number_8"
                                aria-expanded="false"
                                aria-controls="collapseThree">8. Адрес</h3>
                            <div class="accordion__item-collapse accordion__item_number_8 collapse"
                                 aria-labelledby="headingThree"
                                 data-parent=".accordion">
                                <div class="accordion__item-content">
                                    <fieldset>
                                        <ul class="renting-form__form-group-list row">
                                            <li class="renting-form__form-group-list-item col-md-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Город</label>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" placeholder="Например: София">
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-4">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Улица</label>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" placeholder="или название комплекса">
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col-md-3">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Номер дома</label>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" placeholder="">
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>

                                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7283.005449853027!2d23.31942830227749!3d42.697323598921415!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40aa8682cb317bf5%3A0x400a01269bf5e60!2z0KHQvtGE0LjRjywg0JHQvtC70LPQsNGA0LjRjw!5e0!3m2!1sru!2s!4v1530183590984" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                                    </fieldset>
                                </div>
                            </div>
                        </section>
                    </li>
                    <li class="accordion__item">
                        <section class="accordion__item-card">
                            <h3 class="accordion__item-card-header collapsed"
                                data-toggle="collapse"
                                data-target=".accordion__item_number_9"
                                aria-expanded="false"
                                aria-controls="collapseThree">9. Фотографии</h3>
                            <div class="accordion__item-collapse accordion__item_number_9 collapse"
                                 aria-labelledby="headingThree"
                                 data-parent=".accordion">
                                <div class="accordion__item-content">
                                    <fieldset>
                                        <input type="file"
                                               class="filepond"
                                               name="filepond"
                                               multiple
                                               data-max-file-size="3MB"
                                               data-max-files="3" />
                                    </fieldset>
                                </div>
                            </div>
                        </section>
                    </li>
                    <li class="accordion__item">
                        <section class="accordion__item-card">
                            <h3 class="accordion__item-card-header collapsed"
                                data-toggle="collapse"
                                data-target=".accordion__item_number_10"
                                aria-expanded="false"
                                aria-controls="collapseThree">10. Календарь</h3>
                            <div class="accordion__item-collapse accordion__item_number_10 collapse"
                                 aria-labelledby="headingThree"
                                 data-parent=".accordion">
                                <div class="accordion__item-content">
                                    <fieldset>
                                        <legend>Когда ваше жилье будет свободно?</legend>
                                        <ul class="renting-form__form-group-list row">
                                            <li class="renting-form__form-group-list-item col">
                                                <div class="form-group">
                                                    <label for="">Начало периoда</label>
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <div class="input-group-text">
                                                                <i class="icon icon__calendar"></i>
                                                            </div>
                                                        </div>
                                                        <input type="date"
                                                               class="form-control">
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col">
                                                <div class="form-group">
                                                    <label for="">Конец периoда</label>
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <div class="input-group-text">
                                                                <i class="icon icon__calendar"></i>
                                                            </div>
                                                        </div>
                                                        <input type="date"
                                                               class="form-control">
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col">
                                                <div class="form-group">
                                                    <label>&nbsp;</label>
                                                    <div class="input-group">
                                                        <button class="btn btn-success w-100">Сохранить</button>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="renting-form__form-group-list-item col">
                                                <div class="form-group">
                                                    <div class="input-group">
                                                        <textarea name=""
                                                                  id=""
                                                                  rows="2"
                                                                  placeholder="Заметка"
                                                                  class="form-control"></textarea>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </fieldset>
                                </div>
                            </div>
                        </section>
                    </li>
                    <li class="accordion__item">
                        <section class="accordion__item-card">
                            <h3 class="accordion__item-card-header collapsed"
                                data-toggle="collapse"
                                data-target=".accordion__item_number_11"
                                aria-expanded="false"
                                aria-controls="collapseThree">11. Информация о себе</h3>
                            <div class="accordion__item-collapse accordion__item_number_11 collapse"
                                 aria-labelledby="headingThree"
                                 data-parent=".accordion">
                                <div class="accordion__item-content">
                                    <figure class="alert alert-warning">
                                        <div class="lead">ВЫ ДОЛЖНЫ ЗАПОЛНИТЬ ВАШ ПРОФИЛЬ ДЛЯ АКТИВАЦИИ ОБЪЕКТА</div>
                                        <div>Подтвержденные данные профиля вызывают доверие у ваших гостей!</div>
                                    </figure>

                                    <fieldset>
                                        <header class="mb-3">
                                            <legend>
                                                <div class="d-flex align-items-center">ЗАПОЛНИТЕ ОДНИМ КЛИКОМ <span class="text-secondary ml-auto">1 секунда</span></div>
                                            </legend>
                                            <div>Выберите социальную сеть, в которой вы зарегестрированны</div>
                                        </header>

                                        <ul class="list-inline">
                                            <li class="list-inline-item"><a href="" class="icon icon__facebook icon_size_48"></a></li>
                                            <li class="list-inline-item"><a href="" class="icon icon__vk icon_size_48"></a></li>
                                            <li class="list-inline-item"><a href="" class="icon icon__ok icon_size_48"></a></li>
                                        </ul>
                                    </fieldset>

                                    <hr>

                                    <fieldset>
                                        <legend>
                                            <div class="d-flex align-items-center">
                                                ИЛИ <a href="#"
                                                       data-toggle="collapse"
                                                       data-target=".renting-form__profile-collapse"
                                                       class="btn btn-outline-primary btn-sm ml-3">ЗАПОЛНИТЕ ВРУЧНУЮ</a>
                                                <span class="text-secondary ml-auto">1 минута</span>
                                            </div>
                                        </legend>
                                        <div class="renting-form__profile-collapse collapse">
                                            <ul class="renting-form__form-group-list row">
                                                <li class="renting-form__form-group-list-item col-md-6">
                                                    <div class="form-group">
                                                        <label for="">Имя <b class="text-danger">*</b></label>
                                                        <div class="input-group">
                                                            <input type="text"
                                                                   placeholder="Иван"
                                                                   class="form-control">
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="renting-form__form-group-list-item col-md-6">
                                                    <div class="form-group">
                                                        <label for="">Фамилия <b class="text-danger">*</b></label>
                                                        <div class="input-group">
                                                            <input type="text"
                                                                   placeholder="Иванов"
                                                                   class="form-control">
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="renting-form__form-group-list-item col-md-6">
                                                    <div class="form-group">
                                                        <label for="">Номер телефона *</label>
                                                        <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <div class="input-group-text">
                                                                    <i class="icon icon__calendar"></i>
                                                                </div>
                                                            </div>
                                                            <input type="tel"
                                                                   class="form-control">
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="renting-form__form-group-list-item col-md-6">
                                                    <div class="form-group">
                                                        <label for="">Дата рождения</label>
                                                        <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <div class="input-group-text">
                                                                    <i class="icon icon__calendar"></i>
                                                                </div>
                                                            </div>
                                                            <input type="date"
                                                                   class="form-control">
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="renting-form__form-group-list-item col-md-12">
                                                    <div class="form-group">
                                                        <label for="">Фотография профиля</label>
                                                        <input type="file"
                                                               class="filepond"
                                                               name="filepond"
                                                               multiple
                                                               data-max-file-size="5MB"
                                                               data-max-files="1" />
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                        </section>
                    </li>
                </ol>

            </div>
            <div class="col-lg-3"></div>
        </div>
    </div>
</main>
<!-- /Page: Add page -->

<%- include('../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../common.blocks/meta-footer/meta-footer.tpl'); %>