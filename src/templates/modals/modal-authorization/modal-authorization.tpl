<% var lang = JSON.parse(include('modal-authorization_lang_ru.json')); %>

<!-- Common: modal-authorization -->
<div class="modal-authorization modal fade"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-sm"
         role="document">
        <div class="modal-authorization__content modal-content">
            <a href="#"
               data-dismiss="modal"
               class="close"
               aria-label="<%= lang.label_close %>">
                <i class="icon icon__close icon_style_light"></i>
            </a>
            <div class="modal-authorization__body modal-body">
                <%- include('../../forms/form-authorization/form-authorization.tpl'); %>
            </div>
            <div class="modal-authorization__footer modal-footer">
                <a href="#"
                   class="modal-authorization__register-link"
                   data-toggle="modal"
                   data-dismiss="modal"
                   data-target=".modal-registration"><%= lang.register %></a>
            </div>
        </div>
    </div>
</div>
<!-- /Common: modal-authorization -->