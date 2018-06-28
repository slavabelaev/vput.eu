<!-- Section: Authorization or registration -->
<section class="authorization-or-registration">
    <div class="row">
        <div class="col-md-6 mb-4">
            <section class="authorization-or-registration__card">
                <div class="authorization-or-registration__card-front authorization-or-registration__card-front-auth authorization-or-registration__card-body">
                    <h2 class="card-title text-center">У меня есть аккаунт</h2>
                </div>
                <div class="authorization-or-registration__card-back authorization-or-registration__card-back-auth authorization-or-registration__card-body">
                    <div class="authorization-or-registration__authorization-form">
                        <%- include('../../common.blocks/authorization-form/authorization-form.tpl'); %>
                    </div>
                </div>
            </section>
        </div>
        <div class="col-md-6 mb-4">
            <section class="authorization-or-registration__card">
                <div class="authorization-or-registration__card-front authorization-or-registration__card-front-register authorization-or-registration__card-body d-none">
                    <h2 class="card-title text-center">Я тут новенький</h2>
                </div>
                <div class="authorization-or-registration__card-back authorization-or-registration__card-back-register authorization-or-registration__card-body">
                    <div class="authorization-or-registration__registration-form">
                        <%- include('../../common.blocks/registration-form/registration-form.tpl'); %>
                    </div>
                </div>
            </section>
        </div>
    </div>
</section>
<!-- /Section: Authorization or registration -->