<% var lang = JSON.parse(include('form-car-rental_lang_ru.json')); %>

<!-- Form: form-car-rental -->
<form class="form-car-rental card bg-gray-50"
      method="post"
      action="/feedback/rentCarSend/">
    <legend class="card-header text-center"><%= lang.title %></legend>
    <div class="card-body">
        <ul class="row">
            <li class="col-lg-4 col-md-6">
                <div class="form-group">
                    <label for="form-car-rental__car-name"><%= lang.rented_car %></label>
                    <select class="custom-select"
                            name="carName"
                            required
                            id="form-car-rental__car-name">
                        <option value=""
                                selected
                                disabled><%= lang.select %></option>
                        <% for(var i = 0;i < lang.cars.length;i++) { %>
                        <option value="<%= lang.cars[i].value %>"><%= lang.cars[i].name %></option>
                        <% } %>
                    </select>
                </div>
            </li>
            <li class="col-lg-4 col-md-6">
                <div class="form-group">
                    <label for="form-car-rental__date-start"><%= lang.start_date_of_lease %></label>
                    <input type="date"
                           name="dateStart"
                           required
                           id="form-car-rental__date-start"
                           class="form-control">
                </div>
            </li>
            <li class="col-lg-4 col-md-6">
                <div class="form-group">
                    <label for="form-car-rental__date-end"><%= lang.end_date_of_lease %></label>
                    <input type="date"
                           name="dateEnd"
                           required
                           id="form-car-rental__date-end"
                           class="form-control">
                </div>
            </li>
            <li class="col-lg-4 col-md-6">
                <div class="form-group">
                    <label for="form-car-rental__name"><%= lang.first_name %></label>
                    <input type="text"
                           name="name"
                           required
                           placeholder="Ivan"
                           id="form-car-rental__name"
                           class="form-control">
                </div>
            </li>
            <li class="col-lg-4 col-md-6">
                <div class="form-group">
                    <label for="form-car-rental__family"><%= lang.second_name %></label>
                    <input type="text"
                           name="family"
                           required
                           id="form-car-rental__family"
                           placeholder="Ivanov"
                           class="form-control">
                </div>
            </li>
            <li class="col-lg-4 col-md-6 d-none d-lg-block"></li>
            <li class="col-lg-4 col-md-6">
                <div class="form-group">
                    <label for="form-car-rental__email"><%= lang.email %></label>
                    <input type="email"
                           name="email"
                           required
                           id="form-car-rental__email"
                           placeholder="vash_email@email.com"
                           class="form-control">
                </div>
            </li>
            <li class="col-lg-4 col-md-6">
                <div class="form-group">
                    <label for="form-car-rental__phone"><%= lang.phone %></label>
                    <input type="tel"
                           name="phone"
                           required
                           id="form-car-rental__phone"
                           class="form-control"
                           data-plugin="int-tel-input">
                </div>
            </li>
            <li class="col-lg-4 col-md-6"></li>
            <li class="col-lg-4 col-md-6 mb-4 mb-md-0">
                <button type="submit" class="btn btn-primary btn-lg w-100"><%= lang.checkout %></button>
            </li>
            <li class="col-lg-4 col-md-6">
                <div class="lead"><%= lang.has_questions %></div>
                <a href="tel:+359877888921" class="text-dark">+359 877 888 921</a>
            </li>
        </ul>
        <div class="form-car-rental__alert form-car-rental__alert_is_success alert alert-success mt-3 mb-0 d-none">
            <%= lang.success_message %>
        </div>
        <div class="form-car-rental__alert form-car-rental__alert_is_danger alert alert-danger mt-3 mb-0 d-none">
            <%= lang.error_message %>
        </div>
    </div>
</form>
<!-- /Form: form-car-rental -->