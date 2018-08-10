<!-- Form: form-change-password -->
<form class="form-change-password card my-4">
    <h3 class="card-header lead font-weight-bold border-bottom-0"
        data-toggle="collapse"
        data-target=".form-change-password__content">Смена пароля</h3>
    <div class="form-change-password__content collapse">
        <ul class="card-body list-unstyled mb-0 border-top">
            <li class="form-group">
                <label for="">Текущий пароль</label>
                <input type="password"
                       required
                       class="form-control">
            </li>
            <li class="form-group">
                <label for="">Новый пароль</label>
                <input type="password"
                       required
                       class="form-control">
            </li>
            <li class="form-group mb-0">
                <label for="">Повторите новый пароль</label>
                <input type="password"
                       required
                       class="form-control">
            </li>
        </ul>
        <footer class="card-footer text-center">
            <button type="submit"
                    class="btn btn-primary">Изменить пароль</button>
        </footer>
    </div>
</form>
<!-- /Form: form-change-password -->