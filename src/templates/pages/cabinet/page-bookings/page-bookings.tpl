<% //var lang = JSON.parse(include('page-bookings_lang_ru.json')); %>

<%- include('../../../common.blocks/meta-header/meta-header.tpl'); %>
<%- include('../../../common.blocks/page-header/page-header.tpl'); %>

<!-- Page: page-bookings -->
<link rel="stylesheet" href="assets/pages/site/page-bookings.css">
<script src="assets/pages/site/page-bookings.js" defer></script>

<main class="page-bookings">
    <div class="container py-4">
        <h1 class="page-bookings__title text-center mb-4">Ваши бронирования</h1>
        <div class="row">
            <div class="col-xl-3 d-none d-xl-block">
                <aside class="page-bookings__aside">
                    <%- include('../../../common.blocks/cabinet-navigation/cabinet-navigation.tpl'); %>
                </aside>
            </div>
            <div class="col-xl-9">
                <div class="page-bookings__form-bookings-filter mb-4">
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
<!-- /Page: page-bookings -->

<%- include('../../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../../common.blocks/meta-footer/meta-footer.tpl'); %>