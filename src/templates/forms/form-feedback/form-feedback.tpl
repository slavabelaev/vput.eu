<% var lang = JSON.parse(include('form-feedback_lang_ru.json')); %>

<!-- Form: form-feedback -->
<form action="/feedback/ajaxAboutFeedbackSend/"
      method="post"
      class="form-feedback">
    <ul class="row">
        <li class="col-12">
            <div class="form-group">
                <input type="text"
                       name="aboutName"
                       required
                       class="form-control form-control-lg"
                       placeholder="<%= lang.full_name %>">
            </div>
        </li>
        <li class="col-md-6">
            <div class="form-group">
                <input type="tel"
                       name="aboutPhone"
                       required
                       class="form-control form-control-lg"
                       placeholder="<%= lang.phone %>">
            </div>
        </li>
        <li class="col-md-6">
            <div class="form-group">
                <input type="email"
                       name="aboutEmail"
                       required
                       class="form-control form-control-lg"
                       placeholder="<%= lang.email %>">
            </div>
        </li>
        <li class="col-12">
            <div class="form-group">
                <textarea class="form-control form-control-lg"
                          name="aboutComment"
                          required
                          placeholder="<%= lang.message %>"></textarea>
            </div>
        </li>
        <li class="col-md-12">
            <div class="custom-control custom-checkbox mb-3">
                <input type="checkbox"
                       name="aboutJuridic"
                       class="custom-control-input"
                       id="form-feedback__about-juridic">
                <label class="custom-control-label"
                       for="form-feedback__about-juridic"><%= lang.is_juridic %></label>
            </div>
        </li>
        <li class="col-md-12">
            <div class="form-group">
                <input type="text"
                       name="aboutRequisits"
                       class="form-control form-control-lg"
                       placeholder="<%= lang.requisits %>">
            </div>
        </li>
        <li class="col-md-12">
            <div class="form-group">
                <input type="text"
                       name="aboutMap"
                       class="form-control form-control-lg"
                       placeholder="<%= lang.card %>">
            </div>
        </li>
    </ul>
    <div class="text-right">
        <button type="submit"
                class="btn btn-secondary btn-lg"><%= lang.send %></button>
    </div>
    <div class="form-feedback__alert form-feedback__alert_is_success alert alert-success mt-3 mb-0 d-none">
        <%= lang.success_message %>
    </div>
    <div class="form-feedback__alert form-feedback__alert_is_danger alert alert-danger mt-3 mb-0 d-none">
        <%= lang.error_message %>
    </div>
</form>
<!-- /Form: form-feedback -->