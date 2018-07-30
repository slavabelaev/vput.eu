<% var lang = JSON.parse(include('offer-bedrooms_lang_ru.json')); %>

<!-- Section: offer-bedrooms -->
<section class="offer-bedrooms">
    <h2 class="offer-bedrooms__title mb-3"><%= lang.title %></h2>
    <ul class="list-of-offer-characteristics row">
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__sofa"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.sofa_bed %></label>
                    <div class="offer-characteristic__value">1</div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__single-bed"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.single_bed %></label>
                    <div class="offer-characteristic__value">1</div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__bed"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.double_bed %></label>
                    <div class="offer-characteristic__value">1</div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__beds"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.pull_out_double_bed %></label>
                    <div class="offer-characteristic__value">1</div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__crib"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.cot %></label>
                    <div class="offer-characteristic__value">1</div>
                </figcaption>
            </figure>
        </li>
        <li class="list-of-offer-characteristics__item col-md-6">
            <figure class="offer-characteristic">
                <i class="offer-characteristic__icon icon icon__lounge"></i>
                <figcaption class="offer-characteristic__caption">
                    <label class="offer-characteristic__label"><%= lang.arm_chair_bed %></label>
                    <div class="offer-characteristic__value">1</div>
                </figcaption>
            </figure>
        </li>
    </ul>
</section>
<!-- /Section: offer-bedrooms -->