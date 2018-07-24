<% var lang = JSON.parse(include('authorization-modal_lang_ru.json')); %>

<!-- Common: authorization-modal -->
<div class="authorization-modal modal fade"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
    <div class="modal-dialog modal-sm"
         role="document">
        <div class="authorization-modal__content modal-content">
            <a href="#"
               data-dismiss="modal"
               class="close"
               aria-label="<%= lang.label_close %>">
                <i class="icon icon__close icon_style_light"></i>
            </a>
            <div class="authorization-modal__body modal-body">
                <%- include('../../forms/form-authorization/form-authorization.tpl'); %>
            </div>
            <div class="authorization-modal__footer modal-footer">
                <a href="#"
                   class="authorization-modal__register-link"
                   data-toggle="modal"
                   data-dismiss="modal"
                   data-target=".registration-modal"><%= lang.register %></a>
            </div>
        </div>
    </div>
</div>
<!-- /Common: authorization-modal -->