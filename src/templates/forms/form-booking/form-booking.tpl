<% var lang = JSON.parse(include('form-booking_lang_ru.json')); %>

<!-- Form: form-booking -->
<form action="/realties/getFactureToPeriod/"
      class="form-booking">
    <div class="row mb-3">
        <div class="form-booking__price col-6">
            <label class="form-booking__price-label"><%= lang.from %></label>
            <span class="form-booking__price-value">€25</span>
        </div>
        <div class="col-6">
            <span class="form-booking__description"><%= lang.description %></span>
        </div>
    </div>
    <div class="form-booking__form form-row">
        <div class="form-group col-6">
            <label for="form-booking__control_name_check-in"><%= lang.check_in %></label>
            <input name="startDate"
                   type="date"
                   required
                   class="form-control"
                   id="form-booking__control_name_check-in">
        </div>
        <div class="form-group col-6">
            <label for="form-booking__control_name_check-out"><%= lang.check_out %></label>
            <input name="endDate"
                   type="date"
                   required
                   class="form-control"
                   id="form-booking__control_name_check-out">
        </div>
        <div class="form-group col-12">
            <select name="guests"
                    required
                    class="custom-select"
                    id="form-booking__control_name_guests">
                <option selected
                        disabled><%= lang.guests %></option>
                <% for(var i = 1;i <= 10;i++) { %>
                <option value="<%= i %>"><%= i %></option>
                <% } %>
            </select>
        </div>
    </div>

    <table class="form-booking__table table">
        <tbody>
        <tr>
            <td>€25 x 5 <%= lang.nights %></td>
            <td class="text-right">
                <strong class="form-booking__amount">€123</strong>
            </td>
        </tr>
        <tr>
            <td><%= lang.to_pay %></td>
            <td class="text-right">
                <strong class="form-booking__to-pay">€123</strong>
            </td>
        </tr>
        </tbody>
    </table>

    <a href="#" class="btn btn-secondary btn-lg w-100 mb-3"><%= lang.contact_host %></a>
    <a href="#" class="btn btn-outline-primary btn-filled btn-lg w-100 mb-3"><%= lang.book %></a>

    <div class="form-booking__alert alert alert-danger"><%= lang.booking_is_not_possible %></div>
    <div class="form-booking__alert alert alert-danger"><%= lang.these_days_are_unavailable %></div>

    <figure class="form-booking__informer">
        <i class="icon icon__lamp icon_size_32 mr-3"></i>
        <figcaption class="form-booking__informer-description">
            <strong class="form-booking__informer-number-of-persons">2 <%= lang.persons %></strong>
            <%= lang.informer_message %>
            <span class="form-booking__informer-period"><%= lang.in_chosen_period %></span>
            <span class="form-booking__informer-season"><%= lang.in_this_season %></span>
        </figcaption>
    </figure>
</form>
<!-- /Form: form-booking -->