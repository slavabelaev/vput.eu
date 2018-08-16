<!-- Block: booking-item -->
<section class="booking-item card">
    <header class="card-header">
        <ul class="row">
            <li class="booking-item__id font-weight-normal col-6 col-md-auto">№3744</li>
            <li class="booking-item__price col-6 col-md-auto ml-sm-auto order-md-1 text-right">€1205</li>
            <li class="booking-item__title col-md-auto mt-3 mt-md-0">Квартира с фронтальным видом на море в Несебре</li>
        </ul>
    </header>
    <div class="row align-items-center">
        <div class="col-md-5 col-lg-4">
            <%- include('../../common.blocks/offer-item-carousel/offer-item-carousel.tpl'); %>
        </div>
        <div class="col-md">
            <div class="card-body">
                <ul class="row mb-3">
                    <li class="col-6 col-sm mb-3 mb-lg-0">
                        <label class="text-muted mb-0">Заезд:</label>
                        <div class="lead">2017-09-06</div>
                    </li>
                    <li class="col-6 col-sm mb-3 mb-lg-0">
                        <label class="text-muted mb-0">Выезд:</label>
                        <div class="lead">2017-09-06</div>
                    </li>
                    <li class="col-sm mb-3 mb-lg-0">
                        <label class="text-muted mb-0">Итого:</label>
                        <div class="lead">11 ночей</div>
                    </li>
                </ul>
                <figure class="booking-item__communication">
                    <div class="booking-item__user-avatar mr-3">
                        <%- include('../../common.blocks/user-avatar/user-avatar.tpl'); %>
                    </div>
                    <figcaption class="booking-item__communication-body">
                        <h3 class="booking-item__user-full-name lead">Дмитрий</h3>
                        <div class="alert alert-info mb-0">Новых сообщений нет</div>
                    </figcaption>
                </figure>
            </div>
        </div>
    </div>
    <footer class="card-footer">
        <div class="row align-items-center">
            <div class="col-md">
                <div class="text-danger p-2">Гость не оплатил счет в течение 48 часов</div>
            </div>
            <div class="col-md text-right">
                <button class="btn btn-dark"
                        data-toggle="modal"
                        data-target=".transfer-details-modal">В архив</button>
                <button class="btn btn-link"
                        data-toggle="modal"
                        data-target=".transfer-details-modal">Подробнее</button>
            </div>
        </div>
    </footer>
</section>
<!-- /Block: booking-item -->