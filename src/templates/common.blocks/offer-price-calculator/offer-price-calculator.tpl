<!-- Block: Offer price calculator -->
<form action="#" class="offer-price-calculator">
    <div class="row mb-3">
        <div class="offer-price-calculator__price col-6">
            <label class="offer-price-calculator__price-label">От</label>
            <span class="offer-price-calculator__price-value">€25</span>
        </div>
        <div class="col-6">
            <span class="offer-price-calculator__description">Цена указана за квартиру целиком</span>
        </div>
    </div>
    <div class="offer-price-calculator__form form-row">
        <div class="form-group col-6">
            <label for="offer-price-calculator__control_name_check-in">Заезд</label>
            <input name=""
                   type="date"
                   class="form-control"
                   id="offer-price-calculator__control_name_check-in">
        </div>
        <div class="form-group col-6">
            <label for="offer-price-calculator__control_name_check-out">Выезд</label>
            <input name=""
                   type="date"
                   class="form-control"
                   id="offer-price-calculator__control_name_check-out">
        </div>
        <div class="form-group col-12">
            <select name="guests"
                    class="custom-select mr-sm-2"
                    id="offer-price-calculator__control_name_guests">
                <option selected>1 гость</option>
                <option value="1">2 гостя</option>
                <option value="2">3 гостя</option>
                <option value="3">4 гостя</option>
            </select>
        </div>
    </div>
    <table class="offer-price-calculator__table table">
        <tbody>
        <tr>
            <td>€25 x 5 ночей</td>
            <td class="text-right"><strong class="offer-price-calculator__amount">€123</strong></td>
        </tr>
        <tr>
            <td>К оплате:</td>
            <td class="text-right"><strong class="offer-price-calculator__to-pay">€123</strong></td>
        </tr>
        </tbody>
    </table>
    <a href="#" class="btn btn-secondary btn-lg w-100 mb-3">Написать хозяину</a>
    <a href="#" class="btn btn-outline-primary btn-lg w-100 mb-3">Оплатить бронирование</a>
    <div class="offer-price-calculator__alert alert alert-danger">Бронирование невозможно</div>
    <figure class="offer-price-calculator__informer">
        <i class="icon icon__lamp icon_size_32 mr-3"></i>
        <figcaption class="offer-price-calculator__informer-description"><strong class="offer-price-calculator__informer-number-of-persons">2 человека</strong> планирует остановиться здесь в выбранный период</figcaption>
    </figure>
</form>
<!-- /Block: Offer price calculator -->