<%- include('../../common.blocks/meta-header/meta-header.tpl'); %>
<%- include('../../common.blocks/page-header/page-header.tpl'); %>

<!-- Page: page-search -->
<main class="page-search">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-8 page-search__search-container">
                <div class="page-search__offers-search-form py-4 border-bottom">
                    <%- include('../../common.blocks/offers-search-form/offers-search-form.tpl'); %>
                </div>
                <div class="page-search__list-of-offers py-4">
                    <!-- List of offers -->
                    <ul class="list-of-offers row">
                        <% for(var i = 0; i < 8; i++) { %>
                        <li class="col-sm-6 col-lg-4 mb-3">
                            <%- include('../../common.blocks/offer-item/offer-item.tpl'); %>
                        </li>
                        <% } %>
                    </ul>
                    <!-- /List of offers -->
                </div>
                <nav aria-label="Pagination">
                    <ul class="pagination">
                        <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">Next</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-4 page-search__map-container">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d39452.89348817595!2d23.304786546486927!3d42.69623025502115!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40a8fec1c85bf089%3A0xa01269bf4c10!2z0JHQvtC70LPQsNGA0LjRjw!5e0!3m2!1sru!2s!4v1527968819671" width="100%" height="100%" frameborder="0" style="border:0" allowfullscreen class="page-search__map"></iframe>
            </div>
        </div>
    </div>
</main>
<!-- /Page: page-search -->

<%- include('../../common.blocks/meta-footer/meta-footer.tpl'); %>