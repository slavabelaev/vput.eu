<% var lang = JSON.parse(include('offer-characteristics_lang_ru.json')); %>

<!-- Section: offer-characteristics -->
<section class="offer-characteristics">
    <h2 class="offer-characteristic__title mb-4"><%= lang.title %></h2>
    <ul class="list-of-offer-characteristics row">
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__building"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.accommodation_type %></label>
                    <div class="offer-characteristic__value"><%= lang.floor %></div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__stairs"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.floors_total %></label>
                    <div class="offer-characteristic__value">1 / 4</div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__cleaning"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.cleaning %></label>
                    <div class="offer-characteristic__value"><%= lang.ask_the_host %></div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__towel"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.change_of_bed_sheets %></label>
                    <div class="offer-characteristic__value"><%= lang.ask_the_host %></div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__parking"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.parking %></label>
                    <div class="offer-characteristic__value"><%= lang.no %></div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__wifi"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.internet %></label>
                    <div class="offer-characteristic__value"><%= lang.ask_the_host %></div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__balcony"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.balcony %></label>
                    <div class="offer-characteristic__value"><%= lang.ask_the_host %></div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__window"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.view_from_the_windows %></label>
                    <div class="offer-characteristic__value"><%= lang.ask_the_host %></div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__bucket"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label">Заказать уборку:</label>
                    <div class="offer-characteristic__value"><%= lang.ask_the_host %></div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__add-guest"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.extra_guest_fee %></label>
                    <div class="offer-characteristic__value text-secondary">€0</div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__hot-towel"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.order_change_of_bed_sheet %></label>
                    <div class="offer-characteristic__value"><%= lang.ask_the_host %></div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__final-cleaning"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.final_cleaning_fee %></label>
                    <div class="offer-characteristic__value text-secondary"><%= lang.not_required %></div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__safe-box"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.non_refundable_deposit %></label>
                    <div class="offer-characteristic__value text-secondary">15%
                        <i class="icon icon__information ml-2"
                           data-toggle="tooltip"
                           data-placement="right"
                           data-html="true"
                           title="<%= lang.non_refundable_deposit_description %>"></i>
                    </div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__credit-card"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.prepayment %></label>
                    <div class="offer-characteristic__value text-secondary">50%
                        <i class="icon icon__information ml-2"
                           data-toggle="tooltip"
                           data-placement="right"
                           data-html="true"
                           title="<%= lang.prepayment_description %>"></i>
                    </div>
                </figcaption>
            </figure>
        </li>
    </ul>
</section>
<!-- /Section: offer-characteristics -->