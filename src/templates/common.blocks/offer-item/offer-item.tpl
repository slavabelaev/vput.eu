<% var lang = JSON.parse(include('offer-item_lang_ru.json')); %>

<!-- Common: offer-item -->
<figure class="offer-item">
    <a class="offer-item__toggle-favorites animated-heart icon icon__heart icon_style_light"
       data-toggle="button"
       aria-pressed="false"></a>
    <div class="offer-item__offer-item-carousel">
        <%- include('../../common.blocks/offer-item-carousel/offer-item-carousel.tpl'); %>
    </div>
    <figcaption class="offer-item__description">
        <h3 class="offer-item__title">
            <a href="offer.html"
               target="_blank"
               class="offer-item__link"
               title="Studio - Fort Noks Grand Resort">Studio - Fort Noks Grand Resort</a>
        </h3>
        <ul class="offer-item__details">
            <li class="offer-item__detail offer-item__country">Болгария</li>
            <li class="offer-item__detail offer-item__city">Солнечный берег</li>
            <br>
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
            <li class="offer-item__detail offer-item__pets mr-3">
                <i class="icon icon__pets icon_style_light"></i>
            </li>
            <li class="offer-item__detail offer-item__tv mr-3">
                <i class="icon icon__tv icon_style_light"></i>
            </li>
            <li class="offer-item__detail offer-item__air-conditioner mr-3">
                <i class="icon icon__air-conditioner icon_style_light"></i>
            </li>
            <li class="offer-item__detail offer-item__reliable-host">
                <i class="icon icon__reliable-host icon_size_32"></i>
            </li>
        </ul>
    </figcaption>
    <!-- If the item belongs to the owner -->
    <footer class="offer-item__editor">
        <div class="offer-item__actions">
            <!-- ! -->
            <a href="add.html?id=4412&substep=9"
               class="offer-item__action btn btn-secondary d-none">Редактировать</a>
            <!-- /! -->
            <a href="add.html?id=4412&substep=9"
               class="offer-item__action btn btn-warning"
               data-toggle="tooltip"
               data-placement="top"
               data-html="true"
               title="Пройдено <b class='text-warning'>5</b> шагов из <b class='text-success'>11</b>">Продолжить добавление</a>
            <a href=""
               class="offer-item__action btn btn-warning"
               data-toggle="tooltip"
               data-placement="top"
               data-html="true"
               title="Подтвердить актуальность календаря <div class='alert alert-warning alert-sm mb-0 mt-2'>Последнее обновление календаря: <b class='d-block'>26-06-2018 16:45:05</b></div><div class='alert alert-warning alert-sm mb-0 mt-2'>Календарь не актуален</div>"><i class="icon icon__calendar icon_size_16 icon_style_dark"></i></a>
            <button type="button"
                    class="offer-item__action btn btn-light"
                    data-toggle="tooltip"
                    data-placement="top"
                    data-html="true"
                    title="Копировать ссылку на объект"><i class="icon icon__link icon_style_dark icon_size_16"></i></button>
        </div>
        <div class="offer-item__statuses">
            <!-- ! -->
            <div class="offer-item__status offer-item__status_state_danger d-none">Заблокированно</div>
            <div class="offer-item__status offer-item__status_state_warning d-none">На модерации</div>
            <!-- /! -->
            <div class="offer-item__status offer-item__status_state_success">Публикуется</div>
        </div>
    </footer>
    <!-- /If the item belongs to the owner -->
</figure>
<!-- /Common: offer-item -->