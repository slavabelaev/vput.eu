<!-- Section: Similar offers -->
<section class="similar-offers">
    <h2 class="similar-offers__title mb-4 text-center">ПОХОЖИЕ ПРЕДЛОЖЕНИЯ</h2>
    <div class="similar-offers__list-of-offers">
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
    <div class="similar-offers__link-container mt-3 text-center">
        <a href="#" class="btn btn-primary btn-lg">Посмотреть больше предложений</a>
    </div>
</section>
<!-- /Section: Similar offers -->