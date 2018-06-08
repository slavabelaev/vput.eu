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
        <div class="form-group col-lg-6">
            <label for="offer-price-calculator__control_name_check-in">Заезд</label>
            <input name=""
                   type="date"
                   class="form-control"
                   id="offer-price-calculator__control_name_check-in">
        </div>
        <div class="form-group col-lg-6">
            <label for="offer-price-calculator__control_name_check-out">Выезд</label>
            <input name=""
                   type="date"
                   class="form-control"
                   id="offer-price-calculator__control_name_check-out">
        </div>
        <div class="form-group col-12">
            <label for="offer-price-calculator__control_name_guests">Гостей</label>
            <select name="guests"
                    class="custom-select mr-sm-2"
                    id="offer-price-calculator__control_name_guests">
                <option selected>1</option>
                <option value="1">2</option>
                <option value="2">3</option>
                <option value="3">4</option>
            </select>
        </div>
    </div>
    <table class="offer-price-calculator__table table">
        <tbody>
        <tr>
            <td>€25 x 5 ночей</td>
            <td>€123</td>
        </tr>
        <tr>
            <td>К оплате:</td>
            <td>€123</td>
        </tr>
        </tbody>
    </table>
    <a href="#" class="btn btn-lg btn-secondary w-100">Написать хозяину</a>
</form>
<!-- /Block: Offer price calculator -->