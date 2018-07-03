<section class="best-apartaments-of-the-week">
    <h2 class="best-apartaments-of-the-week__title text-center mb-4">ЛУЧШИЕ АПАРТАМЕНТЫ НЕДЕЛИ</h2>
    <div class="best-apartaments-of-the-week__list-of-offers">
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
</section>