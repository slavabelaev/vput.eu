<% var lang = JSON.parse(include('registration-modal_lang_ru.json')); %>

<!-- Common: registration-modal -->
<div class="registration-modal modal fade"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-sm"
         role="document">
        <div class="registration-modal__content modal-content">
            <a href="#"
               data-dismiss="modal"
               class="close"><i class="icon icon__close icon_style_light"></i></a>
            <div class="modal-body">
                <%- include('../../forms/form-registration/form-registration.tpl'); %>
            </div>
            <div class="registration-modal__footer modal-footer">
                <a href="#" class="registration-modal__authorization-link"
                   data-toggle="modal"
                   data-dismiss="modal"
                   data-target=".authorization-modal"><%= lang.sign_in %></a>
            </div>
        </div>
    </div>
</div>
<!-- /Common: registration-modal -->