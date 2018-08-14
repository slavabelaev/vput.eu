<% var lang = JSON.parse(include('services_lang_ru.json')); %>

<!-- Section: services -->
<div class="services">
    <div class="row mb-5">
        <section class="services__transfer col-xl-6 mb-3">
            <h2 class="services__title mb-4"><%= lang.transfer %></h2>
            <figure class="figure row text-left pr-xl-5">
                <figure class="services__img services__img_is_luggage figure-img col"
                        style="background-image: url(templates/sections/services/services__luggage.png)"></figure>
                <figcaption class="figure-caption col-auto">
                    <h3 class="services__figure-title text-dark font-weight-bold"><%= lang.from_burgas_airport_to %></h3>
                    <table class="services__table mb-4">
                        <tbody class="services__table-tbody">
                        <tr class="services__table-tr">
                            <td class="services__table-td"><%= lang.sunny_beach %></td>
                            <td class="services__table-td"><span class="services__price">€25</span></td>
                        </tr>
                        <tr class="services__table-tr">
                            <td class="services__table-td"><%= lang.sveti_vlas %></td>
                            <td class="services__table-td"><span class="services__price">€27</span></td>
                        </tr>
                        </tbody>
                    </table>
                    <a href="transfer.html"
                       class="services__link"><%= lang.other_destinations %></a>
                </figcaption>
            </figure>
        </section>
        <section class="services__rent-a-car col-xl-6 mb-3">
            <h2 class="services__title mb-4"><%= lang.car_rental %></h2>
            <figure class="figure row text-left pl-xl-5">
                <figcaption class="figure-caption col-auto">
                    <h3 class="services__figure-title text-dark font-weight-bold"><%= lang.best_prices_at_seaside %></h3>
                    <table class="services__table mb-4">
                        <tbody class="services__table-tbody">
                        <tr class="services__table-tr">
                            <td class="services__table-td"><%= lang.june_and_september_from %></td>
                            <td class="services__table-td"><span class="services__price">€15</span></td>
                        </tr>
                        <tr class="services__table-tr">
                            <td class="services__table-td"><%= lang.july_and_august_from %></td>
                            <td class="services__table-td"><span class="services__price">€20</span></td>
                        </tr>
                        </tbody>
                    </table>
                    <a href="car-rental.html"
                       class="services__link"><%= lang.all_cars %></a>
                </figcaption>
                <figure class="services__img service__img_is_car figure-img col"
                        style="background-image: url(templates/sections/services/services__car.png)"></figure>
            </figure>
        </section>
    </div>
    <section class="services__other">
        <h2 class="services__title mb-4"><%= lang.other_services %></h2>
        <ul class="services__other-services-list row">
            <li class="services__other-services-list-item col-md-4 mb-3">
                <figure class="services__other-services-item">
                    <img src="templates/sections/services/services__guests-escort.svg"
                         alt=""
                         class="figure-img mb-3">
                    <figcaption class="figure-caption">
                        <a href="escort.html" class="services__title-link mb-2"><h3 class="services__figure-title"><%= lang.guests_escort %></h3></a>
                        <div class="services__figure-description"><%= lang.guests_escort_description %></div>
                    </figcaption>
                </figure>
            </li>
            <li class="services__other-services-list-item col-md-4 mb-3">
                <figure class="services__other-services-item">
                    <img src="templates/sections/services/services__cleaning-services.svg"
                         alt=""
                         class="figure-img mb-3">
                    <figcaption class="figure-caption">
                        <a href="cleaning.html" class="services__title-link mb-2"><h3 class="services__figure-title"><%= lang.cleaning %></h3></a>
                        <div class="services__figure-description"><%= lang.cleaning_description %></div>
                    </figcaption>
                </figure>
            </li>
            <li class="services__other-services-list-item col-md-4 mb-3">
                <figure class="services__other-services-item">
                    <img src="templates/sections/services/services__property-management.svg"
                         alt=""
                         class="figure-img mb-3">
                    <figcaption class="figure-caption">
                        <a href="management.html" class="services__title-link mb-2"><h3 class="services__figure-title"><%= lang.property_management %></h3></a>
                        <div class="services__figure-description"><%= lang.property_management_description %></div>
                    </figcaption>
                </figure>
            </li>
        </ul>
    </section>
</div>
<!-- /Section: Services -->