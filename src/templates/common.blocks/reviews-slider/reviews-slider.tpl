<% var lang = JSON.parse(include('review-slider_lang_ru.json')); %>

<!-- Common: reviews-slider -->
<ul class="reviews-slider" is-slider>
    <li class="reviews-slider__item">
        <div class="reviews-slider__offer-item">
            <%- include('../../common.blocks/offer-item/offer-item.tpl'); %>
        </div>
        <div class="reviews-slider__review">
            <%- include('../../common.blocks/review/review.tpl'); %>
        </div>
    </li>
    <li class="reviews-slider__item">
        <div class="reviews-slider__offer-item">
            <%- include('../../common.blocks/offer-item/offer-item.tpl'); %>
        </div>
        <div class="reviews-slider__review">
            <%- include('../../common.blocks/review/review.tpl'); %>
        </div>
    </li>
    <li class="reviews-slider__item">
        <div class="reviews-slider__offer-item">
            <%- include('../../common.blocks/offer-item/offer-item.tpl'); %>
        </div>
        <div class="reviews-slider__review">
            <%- include('../../common.blocks/review/review.tpl'); %>
        </div>
    </li>
</ul>
<!-- /Common: reviews-slider -->