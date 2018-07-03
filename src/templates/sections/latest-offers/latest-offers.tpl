<!-- Section: Latest rentals -->
<section class="latest-offers">
    <header class="latest-offers__header mb-4 text-center">
        <h2 class="latest-offers__title mb-0">САМЫЕ НОВЫЕ ПРЕДЛОЖЕНИЯ</h2>
        <div class="latest-offers__description lead">Последние предложения, поступившие на наш сайт</div>
    </header>
    <div class="latest-offers__list-of-offers">
        <!-- List of offers -->
        <ul class="list-of-offers row">
            <% for(var i = 0; i < 8; i++) { %>
            <li class="col-md-6 col-lg-4 col-xl-3 mb-3">
                <%- include('../../common.blocks/offer-item/offer-item.tpl'); %>
            </li>
            <% } %>
        </ul>
        <!-- /List of offers -->
    </div>
    <div class="latest-offers__link-container mt-3 text-center">
        <a href="#" class="btn btn-primary btn-lg">Посмотреть больше предложений</a>
    </div>
</section>
<!-- /Section: Latest rentals -->