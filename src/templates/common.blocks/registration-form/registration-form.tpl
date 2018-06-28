<!-- Registration form -->
<form class="registration-form">
    <h2 class="registration-form__title">Регистрация</h2>
    <fieldset class="registration-modal__fieldset">
        <legend class="registration-modal__legend">через</legend>
        <!-- Social authorization -->
        <ul class="social-authorization">
            <li class="social-authorization__item"><a href="#" class="icon icon__facebook icon_size_48"></a></li>
            <li class="social-authorization__item"><a href="#" class="icon icon__vk icon_size_48"></a></li>
            <li class="social-authorization__item"><a href="#" class="icon icon__ok icon_size_48"></a></li>
        </ul>
        <!-- /Social authorization -->
    </fieldset>
    <fieldset class="registration-modal__fieldset">
        <legend class="registration-modal__legend mb-4">или</legend>
        <div class="form-group">
            <input type="email" name="login" class="form-control form-control-lg" required placeholder="Адрес эл. почты">
        </div>
        <div class="form-group mb-3">
            <input type="password" name="password" class="form-control form-control-lg" required placeholder="Пароль">
        </div>
        <div class="custom-control custom-checkbox mb-3">
            <input type="checkbox" checked name="newsSubscribed" class="custom-control-input" id="newsSubscribed" required>
            <label class="custom-control-label" for="newsSubscribed">Подписаться на спец. предложения</label>
        </div>
    </fieldset>
    <button type="submit" class="btn btn-primary btn-lg w-100">Регистрация</button>
</form>
<!-- Registration form -->