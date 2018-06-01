<!-- Recovery modal -->
<div class="password-recovery-modal modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header justify-content-center">
                <h3 class="modal-title">Забыли пароль?</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body pt-0">
                <p>Пожалуйста, введите e-mail, который вы использовали при регистрации. На указанный e-mail будет отправлен код с дальнейшими инструкциями.</p>
                <!-- Recovery form -->
                <form method="post" action="/recovery/ajaxPasswordRecovery/" class="authorization-form">
                    <div class="form-group">
                        <input type="email" name="login" class="form-control form-control-lg" required placeholder="Адрес эл. почты">
                    </div>
                    <button type="submit" class="btn btn-primary btn-lg w-100">Отправить</button>
                </form>
                <!-- Recovery form -->
            </div>
            <div class="modal-footer justify-content-center pt-0">
                <a href="#" class="nav-link" data-toggle="modal" data-target=".registration-modal" data-dismiss="modal">Регистрация</a>
                <a href="#" class="nav-link" data-toggle="modal" data-target=".authorization-modal" data-dismiss="modal">Вход</a>
            </div>
        </div>
    </div>
</div>
<!-- /Recovery modal -->