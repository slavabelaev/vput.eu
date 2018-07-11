<!-- Registration modal -->
<div class="registration-modal modal fade"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
    <div class="modal-dialog modal-sm"
         role="document">
        <a href="#"
           data-dismiss="modal"
           class="close"
           aria-label="Close"><i class="icon icon__close icon_style_light"></i></a>
        <div class="modal-content">
            <div class="modal-body">
                <%- include('../../common.blocks/registration-form/registration-form.tpl'); %>
            </div>
            <div class="modal-footer">
                <a href="#" class="registration-modal__authorization-link"
                   data-toggle="modal"
                   data-dismiss="modal"
                   data-target=".authorization-modal">Войти</a>
            </div>
        </div>
    </div>
</div>
<!-- /Registration modal -->