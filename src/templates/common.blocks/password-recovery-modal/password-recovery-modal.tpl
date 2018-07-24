<% var lang = JSON.parse(include('password-recovery-modal_lang_ru.json')); %>

<!-- Common: password-recovery-modal -->
<div class="password-recovery-modal modal fade"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
    <div class="modal-dialog modal-sm"
         role="document">
        <div class="modal-content">
            <div class="modal-header justify-content-center">
                <h2 class="modal-title"><%= lang.forgot_password %></h2>
                <a href="#"
                   data-dismiss="modal"
                   class="close"><i class="icon icon__close icon_style_light"></i></a>
            </div>
            <div class="modal-body">
                <div class="mb-4"><%= lang.message %></div>
                <div class="password-recovery-modal__form-recovery">
                    <%- include('../../forms/form-recovery/form-recovery.tpl'); %>
                </div>
            </div>
            <div class="modal-footer justify-content-center pt-0">
                <a href="#"
                   class="nav-link"
                   data-toggle="modal"
                   data-target=".registration-modal"
                   data-dismiss="modal"><%= lang.sign_in %></a>
                <a href="#"
                   class="nav-link"
                   data-toggle="modal"
                   data-target=".authorization-modal"
                   data-dismiss="modal"><%= lang.sign_up %></a>
            </div>
        </div>
    </div>
</div>
<!-- /Common: password-recovery-modal -->