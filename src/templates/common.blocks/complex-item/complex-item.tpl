<% var lang = JSON.parse(include('complex-item_lang_ru.json')); %>

<!-- Common: complex-item -->
<figure class="complex-item">
    <a href="#" class="complex-item__image" style="background-image: url(https://vput.ru/cache/images/realties/483x315_focus/01.jpg_13.JPG);"></a>
    <figcaption class="complex-item__description">
        <h3 class="complex-item__title"><a href="#" class="complex-item__link">Marina Fort Noks</a></h3>
        <ul class="complex-item__details">
            <li class="complex-item__detail">
                <span class="complex-item__number-of-apartments-label"><%= lang.apartments %></span>
                <span class="complex-item__number-of-apartments">27</span>
            </li>
            <li class="complex-item__detail">
                <span class="complex-item__price-label"><%= lang.prices %></span>
                <span class="complex-item__price"><%= lang.prices_from %> €15</span>
            </li>
        </ul>
    </figcaption>
</figure>
<!-- /Common: complex-item -->