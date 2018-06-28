<!-- Block: Authorization form -->
<form class="authorization-form">
    <h2 class="authorization-form__title">Вход</h2>
    <fieldset class="authorization-modal__fieldset">
        <legend class="authorization-modal__legend">через</legend>
        <!-- Social authorization -->
        <ul class="social-authorization">
            <li class="social-authorization__item"><a href="#" class="icon icon__facebook icon_size_48"></a></li>
            <li class="social-authorization__item"><a href="#" class="icon icon__vk icon_size_48"></a></li>
            <li class="social-authorization__item"><a href="#" class="icon icon__ok icon_size_48"></a></li>
        </ul>
        <!-- /Social authorization -->
    </fieldset>
    <fieldset class="authorization-modal__fieldset">
        <legend class="authorization-modal__legend mb-4">или</legend>
        <div class="form-group">
            <input type="email" name="login" class="form-control form-control-lg" required placeholder="Адрес эл. почты">
        </div>
        <div class="form-group mb-2">
            <input type="password" name="password" class="form-control form-control-lg" required placeholder="Пароль">
        </div>
        <div class="row align-items-center mb-2">
            <div class="col-6">
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" name="cookie" class="custom-control-input" id="rememberMe" required>
                    <label class="custom-control-label" for="rememberMe">Запомнить меня</label>
                </div>
            </div>
            <div class="col-6 text-right">
                <a href="#" class="nav-link" data-toggle="modal" data-target=".password-recovery-modal" data-dismiss="modal">Забыл пароль</a>
            </div>
        </div>
    </fieldset>
    <button type="submit" class="btn btn-primary btn-lg w-100">Войти</button>
</form>
<!-- /Block: Authorization form -->