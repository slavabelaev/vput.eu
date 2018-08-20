<!-- Block: form-edit-transfer -->
<form action="#"
      class="form-edit-transfer card bg-light">
    <header class="card-header">
        <ul class="row">
            <li class="form-edit-transfer__id col-6 col-md-auto">№12</li>
            <li class="form-edit-transfer__price col-6 col-md-auto ml-sm-auto order-md-1 text-right">€29</li>
            <li class="form-edit-transfer__title col-md-auto mt-3 mt-md-0">Солнечный берег → Аэропорт "Бургас"</li>
        </ul>
    </header>
    <div class="card-body pb-2">
        <ul class="row">
            <li class="col-md-6 col-lg">
                <div class="form-group">
                    <label>Надпись на табличке</label>
                    <input type="text"
                           name="nameplate"
                           value="Дмитрий Черчел"
                           disabled
                           required
                           class="form-control">
                </div>
            </li>
            <li class="col-md-6 col-lg">
                <div class="form-group">
                    <label>Дата и время встречи</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text">
                                <i class="icon icon__calendar"></i>
                            </div>
                        </div>
                        <input type="text"
                               name="datetime"
                               value="2017-09-06 09:00"
                               required
                               disabled
                               class="form-control">
                    </div>
                </div>
            </li>
            <li class="col-md-6 col-lg">
                <div class="form-group">
                    <label>Количество пасажиров</label>
                    <select name="NumberOfGuests"
                            disabled
                            required
                            class="custom-select">
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
            </li>
            <li class="col-md-6 col-lg">
                <div class="form-group">
                    <label>Машина</label>
                    <select name="car"
                            disabled
                            class="custom-select">
                        <option value="" selected>Легковой автомобиль</option>
                    </select>
                </div>
            </li>
            <li class="col-12">
                <div class="form-edit-transfer__note-collapse collapse">
                    <div class="form-group">
                        <label>Примечание</label>
                        <textarea name="note"
                                  disabled
                                  rows="4"
                                  class="form-control"></textarea>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    <footer class="card-footer">
        <div class="row align-items-center">
            <div class="col-sm">
                <div class="text-success text-center text-sm-left mb-3 mb-sm-0">Зарегистрирован</div>
            </div>
            <div class="col-sm text-center text-sm-right">
                <div class="form-edit-transfer__editable-buttons">
                    <button type="submit"
                            class="form-edit-transfer__button-save btn btn-primary">Сохранить</button>
                    <a href="#"
                       class="form-edit-transfer__button-cancel btn btn-danger">Отмена</a>
                </div>
                <div class="form-edit-transfer__buttons">
                    <a href="#"
                       class="form-edit-transfer__button-edit btn btn-outline-primary btn-filled">Изменить</a>
                    <a href="#"
                       class="form-edit-transfer__button-details btn btn-outline-info btn-filled collapsed">Подробнее</a>
                </div>
            </div>
        </div>
    </footer>
</form>
<!-- /Block: form-edit-transfer -->