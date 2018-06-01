<!-- Registration modal -->
<div class="registration-modal modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header justify-content-center">
                <h3 class="modal-title">Регистрация</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body pt-0">
                <!-- Registration form -->
                <form class="registration-form">
                    <h4 class="text-center">через</h4>
                    <!-- Social authorization -->
                    <ul class="social-authorization">
                        <li class="social-authorization__item"><a href="#" class="social-authorization__icon social-authorization__icon_type_facebook"></a></li>
                        <li class="social-authorization__item"><a href="#" class="social-authorization__icon social-authorization__icon_type_vk"></a></li>
                        <li class="social-authorization__item"><a href="#" class="social-authorization__icon social-authorization__icon_type_ok"></a></li>
                    </ul>
                    <!-- /Social authorization -->
                    <h4 class="text-center">или</h4>
                    <div class="form-group">
                        <input type="email" name="login" class="form-control form-control-lg" required placeholder="Адрес эл. почты">
                    </div>
                    <div class="form-group mb-2">
                        <input type="password" name="password" class="form-control form-control-lg" required placeholder="Пароль">
                    </div>
                    <div class="custom-control custom-checkbox mb-2">
                        <input type="checkbox" checked name="newsSubscribed" class="custom-control-input" id="newsSubscribed" required>
                        <label class="custom-control-label" for="newsSubscribed">Подписаться на спец. предложения</label>
                    </div>
                    <button type="submit" class="btn btn-primary btn-lg w-100">Регистрация</button>
                </form>
                <!-- Registration form -->
            </div>
            <div class="modal-footer justify-content-center pt-0">
                <a href="#" class="nav-link"
                   data-toggle="modal"
                   data-dismiss="modal"
                   data-target=".authorization-modal">Войти</a>
            </div>
        </div>
    </div>
</div>
<!-- /Registration modal -->