<% var lang = JSON.parse(include('form-support_lang_ru.json')); %>

<!-- Form: form-support -->
<form action="/realties/addRealtyMessage/"
      class="form-support bg-light card"
      data-post="&page=/forRent/?lang=">
    <h3 class="form-support__header bg-light card-header"><%= lang.title %></h3>
    <fieldset class="form-support__body card-body">
        <div class="form-group input-group">
            <div class="input-group-prepend">
                <span class="input-group-text">
                    <i class="icon icon__guest"></i>
                </span>
            </div>
            <input type="text"
                   name="name"
                   required
                   placeholder="<%= lang.full_name %>"
                   class="form-control form-control-lg"
                   value="">
        </div>
        <div class="form-group input-group">
            <div class="input-group-prepend">
                <span class="input-group-text">
                    <i class="icon icon__phone"></i>
                </span>
            </div>
            <input type="text" 
                   name="phone"
                   placeholder="<%= lang.phone %>"
                   class="form-control form-control-lg" 
                   value="">
        </div>
        <div class="form-group input-group">
            <div class="input-group-prepend">
                <span class="input-group-text">
                    <i class="icon icon__skype"></i>
                </span>
            </div>
            <input type="text"
                   name="skype"
                   placeholder="<%= lang.skype %>"
                   class="form-control form-control-lg"
                   value="">
        </div>
        <div class="form-group input-group">
            <div class="input-group-prepend">
                <span class="input-group-text">
                    <i class="icon icon__email"></i>
                </span>
            </div>
            <input type="text"
                   name="email"
                   placeholder="<%= lang.email %>"
                   class="form-control form-control-lg"
                   value="">
        </div>
        <div class="form-group mb-0">
            <textarea name="message"
                      required
                      rows="3"
                      class="form-control form-control-lg"
                      placeholder="<%= lang.message %>"></textarea>
        </div>

        <figure class="form-support__alert-success alert alert-success mb-0 d-none"><%= lang.submit_success_message %></figure>
        <figure class="form-support__alert-danger alert alert-danger mb-0 d-none"><%= lang.submit_danger_message %></figure>
    </fieldset>
    <footer class="form-support__footer card-footer bg-light text-right">
        <button type="submit"
                class="form-support__submit btn btn-primary btn-lg"><%= lang.submit_button_text %></button>
    </footer>
</form>
<!-- /Form: form-support -->