<!-- Form: form-change-languages -->
<form class="form-change-languages card">
    <h3 class="card-header lead font-weight-bold">Ваши языки</h3>
    <div class="card-body">
        <p class="card-text text-muted">Выберите языки, которыми вы владеете, из предложенного списка. Также у вас есть возможность указать свой основной язык.</p>
    </div>
    <ul class="list-group list-group-flush">
        <li class="list-group-item">
            <div class="custom-control custom-radio">
                <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input">
                <label class="custom-control-label" for="customRadio1">Русский</label>
            </div>
        </li>
        <li class="list-group-item">
            <div class="custom-control custom-radio">
                <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input">
                <label class="custom-control-label" for="customRadio1">Беларусская</label>
            </div>
        </li>
        <li class="list-group-item">
            <div class="custom-control custom-radio">
                <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input">
                <label class="custom-control-label" for="customRadio1">Français, Langue Française</label>
            </div>
        </li>
    </ul>
    <footer class="card-footer text-center border-top-0">
        <div class="input-group mb-0">
            <div class="input-group-prepend">
                <label class="input-group-text" for="inputGroupSelect01">
                    <i class="icon icon__language"></i>
                </label>
            </div>
            <select class="custom-select" id="inputGroupSelect01">
                <option selected>English</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
            </select>
        </div>
    </footer>
    <footer class="card-footer text-center">
        <a href="#" class="btn btn-primary">Добавить язык</a>
    </footer>
</form>
<!-- /Form: form-change-languages -->