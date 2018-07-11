<!-- Authorization modal -->
<div class="authorization-modal modal fade"
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
                <%- include('../../common.blocks/authorization-form/authorization-form.tpl'); %>
            </div>
            <div class="modal-footer">
                <a href="#" class="authorization-modal__register-link"
                   data-toggle="modal"
                   data-dismiss="modal"
                   data-target=".registration-modal">Регистрация</a>
            </div>
        </div>
    </div>
</div>
<!-- /Authorization modal -->