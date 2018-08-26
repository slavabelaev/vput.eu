<% var lang = JSON.parse(include('form-authorization_lang_ru.json')); %>

<!-- Form: form-authorization -->
<form action="/authorization/ajaxAuthorization/"
      method="post"
      class="form-authorization">
    <h2 class="form-authorization__title"><%= lang.title %></h2>
    <fieldset class="modal-authorization__fieldset">
        <legend class="modal-authorization__legend"><%= lang.sign_in_with %></legend>
        <!-- Common: social-authorization -->
        <ul class="social-authorization">
            <li class="social-authorization__item"><a href="#" class="icon icon__facebook icon_size_48"></a></li>
            <li class="social-authorization__item"><a href="#" class="icon icon__vk icon_size_48"></a></li>
            <li class="social-authorization__item"><a href="#" class="icon icon__ok icon_size_48"></a></li>
        </ul>
        <!-- /Common: social-authorization -->
    </fieldset>
    <fieldset class="modal-authorization__fieldset">
        <legend class="modal-authorization__legend mb-3"><%= lang.or %></legend>
        <div class="form-group">
            <input type="email"
                   name="login"
                   class="form-control form-control-lg"
                   required
                   placeholder="<%= lang.email %>">
        </div>
        <div class="form-group mb-2">
            <input type="password"
                   name="password"
                   class="form-control form-control-lg"
                   required
                   placeholder="<%= lang.password %>">
        </div>
        <div class="row align-items-center mb-2">
            <div class="col-auto">
                <div class="custom-control custom-checkbox">
                    <input type="checkbox"
                           name="cookie"
                           class="custom-control-input"
                           id="rememberMe"
                           required>
                    <label class="custom-control-label"
                           for="rememberMe"><%= lang.remember_me %></label>
                </div>
            </div>
            <div class="col text-right">
                <a href="#"
                   class="nav-link"
                   data-toggle="modal"
                   data-target=".modal-password-recovery"
                   data-dismiss="modal"><%= lang.forgot_password %></a>
            </div>
        </div>
    </fieldset>
    <button type="submit"
            class="btn btn-primary btn-lg w-100"><%= lang.sign_in %></button>
</form>
<!-- /Form: form-authorization -->