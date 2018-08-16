<% var lang = JSON.parse(include('review_lang_ru.json')); %>
<% var data = JSON.parse(include('review__data.json')); %>

<!-- Common: review -->
<figure class="review">
    <figure class="review__user">
        <div class="review__user-avatar mb-2">
            <%- include('../../common.blocks/user-avatar/user-avatar.tpl'); %>
        </div>
        <figcaption class="user__description"><%= data.name %></figcaption>
    </figure>
    <figcaption class="review__content">
        <time class="review__created-at"><%= data.created_at %></time>
        <div class="review__review-rating">
            <figure class="review-rating"
                    data-rating="<%= data.rating %>"></figure>
        </div>
        <div class="review__message"><%= data.message %></div>
    </figcaption>
</figure>
<!-- /Common: review -->