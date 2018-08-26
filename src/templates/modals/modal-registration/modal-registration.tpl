<% var lang = JSON.parse(include('modal-registration_lang_ru.json')); %>

<!-- Common: modal-registration -->
<div class="modal-registration modal fade"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-sm"
         role="document">
        <div class="modal-registration__content modal-content">
            <a href="#"
               data-dismiss="modal"
               class="close"><i class="icon icon__close icon_style_light"></i></a>
            <div class="modal-body">
                <%- include('../../forms/form-registration/form-registration.tpl'); %>
            </div>
            <div class="modal-registration__footer modal-footer">
                <a href="#" class="modal-registration__authorization-link"
                   data-toggle="modal"
                   data-dismiss="modal"
                   data-target=".modal-authorization"><%= lang.sign_in %></a>
            </div>
        </div>
    </div>
</div>
<!-- /Common: modal-registration -->