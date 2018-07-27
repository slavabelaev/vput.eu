<% var lang = JSON.parse(include('latest-reviews_lang_ru.json')); %>

<!-- Section: latest-reviews -->
<section class="latest-reviews">
    <h2 class="latest-reviews__title mb-3"><%= lang.title %></h2>

    <div class="latest-reviews__reviews-slider">
        <%- include('../../common.blocks/reviews-slider/reviews-slider.tpl'); %>
    </div>
</section>
<!-- /Section: latest-reviews -->