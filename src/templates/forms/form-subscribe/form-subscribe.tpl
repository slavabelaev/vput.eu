<% var lang = JSON.parse(include('form-subscribe_lang_ru.json')); %>

<!-- Form: form-subscribe -->
<form action="/realties/subscribeClient/" 
      data-post="&page=/?lang=ru"
      class="form-subscribe form-row w-100">
    <div class="form-group col-7 mb-0">
        <input type="email"
               required
               id="subscribtionEmail"
               class="form-control"
               placeholder="<%= lang.email %>">
    </div>
    <div class="col-5">
        <button type="submit"
                class="btn btn-primary w-100"><%= lang.subscribe %></button>
    </div>
</form>
<!-- /Form: form-subscribe -->