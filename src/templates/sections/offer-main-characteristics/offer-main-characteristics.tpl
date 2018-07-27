<% var lang = JSON.parse(include('offer-main-characteristics_lang_ru.json')); %>

<!-- Section: offer-main-characteristics -->
<div class="offer-main-characteristics">
    <ul class="offer-main-characteristics__list row">
        <li class="offer-main-characteristics__list-item col-6 col-md">
            <figure class="offer-main-characteristics__item">
                <i class="offer-main-characteristics__icon icon icon__guest icon_style_dark icon_size_32"></i>
                <figcaption class="offer-main-characteristics__caption">
                    <h3 class="offer-main-characteristics__title"><%= lang.guests %></h3>
                    <div class="offer-main-characteristics__value">3</div>
                </figcaption>
            </figure>
        </li>
        <li class="offer-main-characteristics__list-item col-6 col-md">
            <figure class="offer-main-characteristics__item">
                <i class="offer-main-characteristics__icon icon icon__door icon_style_dark icon_size_32"></i>
                <figcaption class="offer-main-characteristics__caption">
                    <h3 class="offer-main-characteristics__title"><%= lang.rooms %></h3>
                    <div class="offer-main-characteristics__value">1</div>
                </figcaption>
            </figure>
        </li>
        <li class="offer-main-characteristics__list-item col-6 col-md">
            <figure class="offer-main-characteristics__item">
                <i class="offer-main-characteristics__icon icon icon__bathroom icon_style_dark icon_size_32"></i>
                <figcaption class="offer-main-characteristics__caption">
                    <h3 class="offer-main-characteristics__title"><%= lang.bathrooms %></h3>
                    <div class="offer-main-characteristics__value">1</div>
                </figcaption>
            </figure>
        </li>
        <li class="offer-main-characteristics__list-item col-6 col-md">
            <figure class="offer-main-characteristics__item">
                <i class="offer-main-characteristics__icon icon icon__air-conditioner icon_style_dark icon_size_32"></i>
                <figcaption class="offer-main-characteristics__caption">
                    <h3 class="offer-main-characteristics__title"><%= lang.air_conditioning %></h3>
                    <div class="offer-main-characteristics__value"><%= lang.yes %></div>
                </figcaption>
            </figure>
        </li>
    </ul>
</div>
<!-- /Section: offer-main-characteristics -->