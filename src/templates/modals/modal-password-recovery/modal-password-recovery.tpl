<% var lang = JSON.parse(include('modal-password-recovery_lang_ru.json')); %>

<!-- Common: modal-password-recovery -->
<div class="modal-password-recovery modal fade"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-sm"
         role="document">
        <div class="modal-password-recovery__content modal-content">
            <div class="modal-header justify-content-center">
                <h2 class="modal-title"><%= lang.forgot_password %></h2>
                <a href="#"
                   data-dismiss="modal"
                   class="close"><i class="icon icon__close icon_style_light"></i></a>
            </div>
            <div class="modal-body">
                <div class="mb-4"><%= lang.message %></div>
                <div class="modal-password-recovery__form-recovery">
                    <%- include('../../forms/form-recovery/form-recovery.tpl'); %>
                </div>
            </div>
            <div class="modal-password-recovery__footer modal-footer">
                <a href="#"
                   class="modal-password-recovery__footer-link nav-link"
                   data-toggle="modal"
                   data-target=".modal-registration"
                   data-dismiss="modal"><%= lang.sign_in %></a>
                <a href="#"
                   class="modal-password-recovery__footer-link nav-link"
                   data-toggle="modal"
                   data-target=".modal-authorization"
                   data-dismiss="modal"><%= lang.sign_up %></a>
            </div>
        </div>
    </div>
</div>
<!-- /Common: modal-password-recovery -->