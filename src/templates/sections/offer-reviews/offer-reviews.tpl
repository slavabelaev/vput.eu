<% eval(include('../../_utils/common.js')) %>
<% var lang = JSON.parse(include('offer-reviews_lang_ru.json')); %>

<!-- Section: offer-reviews -->
<section class="offer-reviews">
    <h2 class="offer-reviews__title mb-3">
        <span class="offer-reviews__title-text mr-3">1 <%= Utils.declension(1, lang._review); %></span>
        <div class="offer-reviews__total-rating">
            <figure class="review-rating"
                    data-rating="3"></figure>
        </div>
    </h2>
    <div class="offer-reviews__list-of-offer-ratings mb-4">
        <%- include('../../common.blocks/list-of-offer-ratings/list-of-offer-ratings.tpl'); %>
    </div>
    <div class="offer-reviews__list-of-reviews">
        <%- include('../../common.blocks/list-of-reviews/list-of-reviews.tpl'); %>
    </div>
</section>
<!-- Section: offer-reviews -->