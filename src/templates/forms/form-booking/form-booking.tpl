<!-- Form: form-booking -->
<form action="#" class="form-booking">
    <div class="row mb-3">
        <div class="form-booking__price col-6">
            <label class="form-booking__price-label">От</label>
            <span class="form-booking__price-value">€25</span>
        </div>
        <div class="col-6">
            <span class="form-booking__description">Цена указана за квартиру целиком</span>
        </div>
    </div>
    <div class="form-booking__form form-row">
        <div class="form-group col-6">
            <label for="form-booking__control_name_check-in">Заезд</label>
            <input name=""
                   type="date"
                   class="form-control"
                   id="form-booking__control_name_check-in">
        </div>
        <div class="form-group col-6">
            <label for="form-booking__control_name_check-out">Выезд</label>
            <input name=""
                   type="date"
                   class="form-control"
                   id="form-booking__control_name_check-out">
        </div>
        <div class="form-group col-12">
            <select name="guests"
                    class="custom-select mr-sm-2"
                    id="form-booking__control_name_guests">
                <option selected>1 гость</option>
                <option value="1">2 гостя</option>
                <option value="2">3 гостя</option>
                <option value="3">4 гостя</option>
            </select>
        </div>
    </div>
    <table class="form-booking__table table">
        <tbody>
        <tr>
            <td>€25 x 5 ночей</td>
            <td class="text-right"><strong class="form-booking__amount">€123</strong></td>
        </tr>
        <tr>
            <td>К оплате:</td>
            <td class="text-right"><strong class="form-booking__to-pay">€123</strong></td>
        </tr>
        </tbody>
    </table>
    <a href="#" class="btn btn-secondary btn-lg w-100 mb-3">Написать хозяину</a>
    <a href="#" class="btn btn-outline-primary btn-filled btn-lg w-100 mb-3">Оплатить бронирование</a>
    <div class="form-booking__alert alert alert-danger">Бронирование невозможно</div>
    <figure class="form-booking__informer">
        <i class="icon icon__lamp icon_size_32 mr-3"></i>
        <figcaption class="form-booking__informer-description"><strong class="form-booking__informer-number-of-persons">2 человека</strong> планирует остановиться здесь в выбранный период</figcaption>
    </figure>
</form>
<!-- /Form: form-booking -->