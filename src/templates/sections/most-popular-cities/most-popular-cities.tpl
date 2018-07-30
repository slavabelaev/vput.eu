<% var lang = JSON.parse(include('most-popular-cities_lang_ru.json')); %>

<!-- Section: most-popular-cities -->
<section class="most-popular-cities">
    <header class="most-popular-cities__header mb-4 text-center">
        <h2 class="most-popular-cities__title mb-0"><%= lang.title %></h2>
        <div class="most-popular-cities__description lead text-muted"><%= lang.description %></div>
    </header>
    <ul class="most-popular-cities__list row">
        <li class="most-popular-cities__list-item col-lg-4 col-xl-6 mb-3">
            <figure class="most-popular-cities__figure">
                <div class="most-popular-cities__image"
                     style="background-image: url(templates/sections/most-popular-cities/most-popular-cities__Sunny-Beach.jpg);"></div>
                <figcaption class="most-popular-cities__caption">
                    <h3 class="most-popular-cities__list-title"><%= lang.sunny_beach %></h3>
                    <a href="#" class="most-popular-cities__list-btn btn btn-primary btn-lg"><%= lang.see %></a>
                </figcaption>
            </figure>
        </li>
        <li class="most-popular-cities__list-item col-md-6 col-lg-4 col-xl-3 mb-3">
            <figure class="most-popular-cities__figure">
                <div class="most-popular-cities__image"
                     style="background-image: url(templates/sections/most-popular-cities/most-popular-cities__Saint-Vlas.jpg);"></div>
                <figcaption class="most-popular-cities__caption">
                    <h3 class="most-popular-cities__list-title"><%= lang.saint_vlas %></h3>
                    <a href="#" class="most-popular-cities__list-btn btn btn-primary btn-lg"><%= lang.see %></a>
                </figcaption>
            </figure>
        </li>
        <li class="most-popular-cities__list-item col-md-6 col-lg-4 col-xl-3 mb-3">
            <figure class="most-popular-cities__figure">
                <div class="most-popular-cities__image"
                     style="background-image: url(templates/sections/most-popular-cities/most-popular-cities__Neseber.jpg);"></div>
                <figcaption class="most-popular-cities__caption">
                    <h3 class="most-popular-cities__list-title"><%= lang.nessebar %></h3>
                    <a href="#" class="most-popular-cities__list-btn btn btn-primary btn-lg"><%= lang.see %></a>
                </figcaption>
            </figure>
        </li>
    </ul>
</section>
<!-- /Section: most-popular-cities -->