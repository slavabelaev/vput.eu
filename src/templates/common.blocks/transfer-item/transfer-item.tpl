<!-- Block: transfer-item -->
<section class="transfer-item card">
    <header class="card-header">
        <ul class="row">
            <li class="font-weight-normal col-6 col-md-auto">№12</li>
            <li class="text-secondary col-6 col-md-auto ml-sm-auto order-md-1 text-right">€29</li>
            <li class="col-md-auto mt-3 mt-md-0">Солнечный берег → Аэропорт "Бургас"</li>
        </ul>
    </header>
    <div class="card-body">
        <ul class="row">
            <li class="col-lg-3 col-sm-6 mb-3 mb-lg-0">
                <label class="text-muted mb-0">Имя на табличке:</label>
                <div class="lead">Дмитрий Черчер</div>
            </li>
            <li class="col-lg-3 col-sm-6 mb-3 mb-lg-0">
                <label class="text-muted mb-0">Дата и время встречи:</label>
                <div class="lead">2017-09-06 09:00:00</div>
            </li>
            <li class="col-lg-2 col-sm-6 mb-3 mb-md-0">
                <label class="text-muted mb-0">Пассажиров:</label>
                <div class="lead">5</div>
            </li>
            <li class="col-lg-4 col-sm-6">
                <label class="text-muted mb-0">Машина:</label>
                <div class="lead">Легковой автомобиль</div>
            </li>
        </ul>
    </div>
    <footer class="card-footer">
        <div class="row align-items-center">
            <div class="col">
                <div class="text-success p-2">Зарегистрирован</div>
            </div>
            <div class="col text-right">
                <button class="btn btn-primary"
                        data-toggle="modal"
                        data-target=".transfer-details-modal">Изменить</button>
                <button class="btn btn-link"
                        data-toggle="modal"
                        data-target=".transfer-details-modal">Подробнее</button>
            </div>
        </div>
    </footer>
</section>

<div class="transfer-details-modal modal fade"
     tabindex="-1"
     role="dialog">
    <div class="modal-dialog modal-dialog-centered"
         role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Трансфер №12</h5>
                <button type="button"
                        class="close"
                        data-dismiss="modal">
                    <i class="icon icon__close icon_style_light"></i>
                </button>
            </div>
            <div class="modal-body">
                <%- include('../../forms/form-edit-transfer/form-edit-transfer.tpl'); %>
            </div>
            <div class="modal-footer">
                <button type="submit"
                        class="btn btn-primary">Сохранить</button>
                <button type="button"
                        class="btn btn-secondary"
                        data-dismiss="modal">Отмена</button>
            </div>
        </div>
    </div>
</div>
<!-- /Block: transfer-item -->