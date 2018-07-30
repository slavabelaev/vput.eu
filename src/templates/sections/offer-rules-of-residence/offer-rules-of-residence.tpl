<% eval(include('../../_utils/common.js')) %>
<% var lang = JSON.parse(include('offer-rules-of-residence_lang_ru.json')); %>

<!-- Section: offer-rules-of-residence -->
<section class="offer-rules-of-residence">
    <h2 class="offer-rules-of-residence__title mb-3"><%= lang.title %></h2>
    <ul class="list-of-offer-characteristics row">
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__children"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.children %></label>
                    <div class="offer-characteristic__value"><%= lang.allowed || lang.not_allowed %></div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__time-in"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.check_in_time %></label>
                    <div class="offer-characteristic__value">14:00</div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__smoke"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.smoking %></label>
                    <div class="offer-characteristic__value"><%= lang.allowed || lang.not_allowed %></div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__time-out"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.check_out_time %></label>
                    <div class="offer-characteristic__value">12:00</div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__pets"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.pets %></label>
                    <div class="offer-characteristic__value"><%= lang.allowed || lang.not_allowed %></div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__calendar"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.minimum_stay %></label>
                    <div class="offer-characteristic__value text-secondary">3 <%= Utils.declension(3, lang._day); %></div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__disabled"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.disabled_people %></label>
                    <div class="offer-characteristic__value"><%= lang.ask_the_host %></div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__safe-transaction"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.security_deposit %></label>
                    <div class="offer-characteristic__value text-secondary"><%= lang.not_required %></div>
                </figcaption>
            </figure>
        </li>
    </ul>
</section>
<!-- /Section: offer-rules-of-residence -->