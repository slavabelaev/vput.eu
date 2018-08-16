<% var lang = JSON.parse(include('offer-owner_lang_ru.json')); %>

<!-- Common: offer-owner -->
<div class="offer-owner">
    <figure class="offer-owner__about">
        <div class="offer-owner__user-avatar">
            <%- include('../../common.blocks/user-avatar/user-avatar.tpl'); %>
            <i class="offer-owner__reliable-host icon icon__reliable-host icon_size_32"></i>
        </div>
        <figcaption class="offer-owner__info">
            <h4 class="offer-owner__info-title"><%= lang.owner_languages %></h4>
            <ul class="offer-owner__languages-list">
                <li class="offer-owner__languages-list-item">english</li>
                <li class="offer-owner__languages-list-item">russian</li>
                <li class="offer-owner__languages-list-item">ukrainian</li>
            </ul>
            <a href="#"
               class="offer-owner__contacts-link"
               data-toggle="collapse"
               data-target=".offer-owner__message-collapse"><%= lang.contact_details %></a>
            <div class="offer-owner__name">Алекс</div>
        </figcaption>
    </figure>
    <div class="offer-owner__message-collapse collapse">
        <div class="offer-owner__message mt-3">
            <p><%= lang.message_1 %></p>
            <p><%= lang.message_2 %></p>
            <a href="user-agreement-ru.html"
               target="_blank"
               class="offer-owner__message-link"><%= lang.why_so %></a>
        </div>
    </div>
</div>
<!-- /Common: offer-owner -->