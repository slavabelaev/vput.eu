<% //var lang = JSON.parse(include('page-trips_lang_ru.json')); %>

<%- include('../../../common.blocks/meta-header/meta-header.tpl'); %>
<div class="navbar-dark-md">
    <%- include('../../../common.blocks/page-header/page-header.tpl'); %>
</div>

<!-- Page: page-trips -->
<link rel="stylesheet" href="assets/pages/site/page-trips.css">
<script src="assets/pages/site/page-trips.js" defer></script>

<main class="page-trips">
    <header class="page-cabinet__header py-4">
        <div class="container">
            <h1 class="page-cabinet__title mb-0">Ваши бронирования</h1>
        </div>
    </header>
    <div class="container py-4">
        <div class="row">
            <div class="col-xl-3 d-none d-xl-block">
                <aside class="page-trips__aside">
                    <%- include('../../../common.blocks/cabinet-navigation/cabinet-navigation.tpl'); %>
                </aside>
            </div>
            <div class="col-xl-9">
                <div class="page-trips__form-bookings-filter mb-4">
                    <%- include('../../../forms/form-bookings-filter/form-bookings-filter.tpl'); %>
                </div>
                <ul class="list-unstyled">
                    <li class="page-booking__booking-item mb-4">
                        <%- include('../../../common.blocks/booking-item/booking-item.tpl'); %>
                    </li>
                    <li class="page-booking__booking-item mb-4">
                        <%- include('../../../common.blocks/booking-item/booking-item.tpl'); %>
                    </li>
                    <li class="page-booking__booking-item mb-4">
                        <%- include('../../../common.blocks/booking-item/booking-item.tpl'); %>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</main>
<!-- /Page: page-trips -->

<%- include('../../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../../common.blocks/meta-footer/meta-footer.tpl'); %>