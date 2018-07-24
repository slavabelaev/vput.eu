<% var lang = JSON.parse(include('offer-item_lang_ru.json')); %>

<!-- Common: offer-item -->
<figure class="offer-item">
    <a href="javascript: return false;"
       class="offer-item__add-to-favorites icon icon__heart icon_style_light"
       @click="toggleFavorites(12345)"></a>
    <div class="offer-item__image-slider">
        <button class="offer-item__arrow offer-item__arrow_slide_next slick-next slick-arrow"
                aria-label="Next"
                type="button"></button>
        <button class="offer-item__arrow offer-item__arrow_slide_prev slick-prev slick-arrow"
                aria-label="Prev"
                type="button"></button>
        <nav class="offer-item__list-of-images"
             style="background-image: url(content/images/offers/previews/offer-item__preview-1.jpg);"
             is-slick-carousel>
            <a  data-src="content/images/offers/previews/offer-item__preview-1.jpg"
                class="offer-item__image"></a>
            <a  data-src="content/images/offers/previews/offer-item__preview-2.jpg"
                class="offer-item__image"></a>
            <a  data-src="content/images/offers/previews/offer-item__preview-3.jpg"
                class="offer-item__image"></a>
            <a  data-src="content/images/offers/previews/offer-item__preview-4.jpg"
                class="offer-item__image"></a>
        </nav>
    </div>
    <figcaption class="offer-item__description">
        <h3 class="offer-item__title">
            <a href="offer.html"
               class="offer-item__link">Studio - Fort Noks Grand Resort</a>
        </h3>
        <ul class="offer-item__details">
            <li class="offer-item__detail offer-item__country">Болгария</li>
            <li class="offer-item__detail offer-item__city">Солнечный берег</li>
            <li class="offer-item__detail offer-item__type">Квартира</li>
            <li class="offer-item__detail offer-item__numbers-of-rooms">
                <span class="offer-item__numbers-of-rooms-label"><%= lang.rooms %></span>
                <span class="offer-item__numbers-of-rooms-value">1</span>
            </li>
            <li class="offer-item__detail offer-item__numbers-of-guests">
                <span class="offer-item__numbers-of-guests-label"><%= lang.guests %></span>
                <span class="offer-item__numbers-of-guests-value">7</span>
            </li>
            <li class="offer-item__detail offer-item__price">
                <span class="offer-item__price-currency">€</span>
                <span class="offer-item__price-value">71</span>
            </li>
            <li class="offer-item__detail offer-item__price-per-day">
                <span class="offer-item__price-per-day-currency">€</span>
                <span class="offer-item__price-per-day-value">16</span>
                <i class="icon icon__guest icon_size_16 ml-1"></i>
            </li>
        </ul>
        <ul class="offer-item__special-details">
            <li class="offer-item__detail offer-item__animals mr-3">
                <i class="icon icon__pets icon_style_light"></i>
            </li>
            <li class="offer-item__detail offer-item__tv mr-3">
                <i class="icon icon__tv icon_style_light"></i>
            </li>
            <li class="offer-item__detail offer-item__conditioner mr-3">
                <i class="icon icon__air-conditioner icon_style_light"></i>
            </li>
            <li class="offer-item__detail offer-item__reliable-host">
                <i class="icon icon__reliable-host icon_size_32"></i>
            </li>
        </ul>
    </figcaption>
</figure>
<!-- /Common: offer-item -->