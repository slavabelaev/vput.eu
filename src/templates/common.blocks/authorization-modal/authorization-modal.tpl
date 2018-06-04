<!-- Authorization modal -->
<div class="authorization-modal modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header justify-content-center">
                <h2 class="modal-title">Вход</h2>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body pt-0">
                <!-- Authorization form -->
                <form class="authorization-form">
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
                    <button type="submit" class="btn btn-primary btn-lg w-100">Войти</button>
                </form>
                <!-- Authorization form -->
            </div>
            <div class="modal-footer justify-content-center pt-0">
                <a href="#" class="nav-link"
                   data-toggle="modal"
                   data-dismiss="modal"
                   data-target=".registration-modal">Регистрация</a>
            </div>
        </div>
    </div>
</div>
<!-- /Authorization modal -->