<% var lang = JSON.parse(include('form-subscribe_lang_ru.json')); %>

<!-- Form: form-subscribe -->
<form action="/realties/subscribeClient/" 
      data-post="&page=/?lang=ru"
      class="form-subscribe form-row">
    <div class="form-group col mb-0">
        <input type="email"
               required
               id="subscribtionEmail"
               class="form-control"
               placeholder="<%= lang.email %>">
    </div>
    <div class="col-auto">
        <button type="submit"
                class="btn btn-primary"><%= lang.subscribe %></button>
    </div>
</form>
<!-- /Form: form-subscribe -->