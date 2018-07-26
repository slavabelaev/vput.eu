<% var lang = JSON.parse(include('form-recovery_lang_ru.json')); %>

<!-- Form: form-recovery -->
<form method="post"
      action="/recovery/ajaxPasswordRecovery/"
      class="form-recovery">
    <div class="form-group">
        <input type="email"
               name="login"
               class="form-control form-control-lg"
               required
               placeholder="<%= lang.email %>">
    </div>
    <button type="submit"
            class="btn btn-primary btn-lg w-100"><%= lang.send %></button>
</form>
<!-- /Form: form-recovery -->