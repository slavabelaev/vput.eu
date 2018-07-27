<% var lang = JSON.parse(include('authorization_lang_ru.json')); %>

<!-- Section: Authorization -->
<section class="authorization">
    <div class="row">
        <div class="col-md-6 mb-4">
            <section class="authorization__card">
                <div class="authorization__card-front authorization__card-front-auth authorization__card-body">
                    <h2 class="authorization__title"><%= lang.authorization_title %></h2>
                </div>
                <div class="authorization__card-back authorization__card-back-auth authorization__card-body">
                    <div class="authorization__form-authorization">
                        <%- include('../../forms/form-authorization/form-authorization.tpl'); %>
                    </div>
                </div>
            </section>
        </div>
        <div class="col-md-6 mb-4">
            <section class="authorization__card">
                <div class="authorization__card-front authorization__card-front-register authorization__card-body d-none">
                    <h2 class="authorization__title"><%= lang.registration_title %></h2>
                </div>
                <div class="authorization__card-back authorization__card-back-register authorization__card-body">
                    <div class="authorization__form-registration">
                        <%- include('../../forms/form-registration/form-registration.tpl'); %>
                    </div>
                </div>
            </section>
        </div>
    </div>
</section>
<!-- /Section: Authorization -->