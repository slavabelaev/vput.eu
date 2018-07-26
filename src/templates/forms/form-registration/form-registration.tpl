<% var lang = JSON.parse(include('form-registration_lang_ru.json')); %>

<!-- Form: form-registration-->
<form action="/clients/ajaxAdd/"
      method="post"
      class="form-registration">
    <h2 class="form-registration__title"><%= lang.title %></h2>
    <fieldset class="registration-modal__fieldset">
        <legend class="registration-modal__legend"><%= lang.sign_up_with %></legend>
        <!-- Common: social-authorization -->
        <ul class="social-authorization">
            <li class="social-authorization__item"><a href="#" class="icon icon__facebook icon_size_48"></a></li>
            <li class="social-authorization__item"><a href="#" class="icon icon__vk icon_size_48"></a></li>
            <li class="social-authorization__item"><a href="#" class="icon icon__ok icon_size_48"></a></li>
        </ul>
        <!-- /Common: social-authorization -->
    </fieldset>
    <fieldset class="registration-modal__fieldset">
        <legend class="registration-modal__legend mb-3"><%= lang.or %></legend>
        <div class="form-group">
            <input type="email"
                   name="login"
                   class="form-control form-control-lg"
                   required
                   placeholder="<%= lang.email %>">
        </div>
        <div class="form-group mb-3">
            <input type="password"
                   name="password"
                   class="form-control form-control-lg"
                   required
                   placeholder="<%= lang.password %>">
        </div>
        <div class="custom-control custom-checkbox mb-3">
            <input type="checkbox"
                   checked
                   name="newsSubscribed"
                   class="custom-control-input"
                   id="newsSubscribed"
                   required>
            <label class="custom-control-label"
                   for="newsSubscribed"><%= lang.subscribe_to_the_special_offers %></label>
        </div>
    </fieldset>
    <button type="submit"
            class="btn btn-primary btn-lg w-100"><%= lang.sign_up %></button>
</form>
<!-- Form: form-registration -->