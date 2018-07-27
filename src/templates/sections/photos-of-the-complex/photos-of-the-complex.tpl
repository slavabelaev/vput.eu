<% eval(include('../../_utils/common.js')) %>
<% var lang = JSON.parse(include('photos-of-the-complex_lang_ru.json')); %>

<!-- Section: photos-of-the-complex -->
<section class="photos-of-the-complex">
    <h2 class="photos-of-the-complex__title mb-4">
        <%= lang.title %>
        <small class="text-muted">(10 <%= Utils.declension(10, lang._photo); %>)</small>
    </h2>

    <ul class="photos-of-the-complex__slider mb-4 mb-lg-0"
        is-slick-carousel>
        <li class="photos-of-the-complex__slider-item">
            <a href="content/images/complexes/complex-example/complex-example__image-1.jpg"
               class="photos-of-the-complex__slider-link"
               data-fancybox="photos-of-the-complex"
               style="background-image: url(content/images/complexes/complex-example/complex-example__image-1.jpg"></a>
        </li>
        <li class="photos-of-the-complex__slider-item">
            <a href="content/images/complexes/complex-example/complex-example__image-2.jpg"
               class="photos-of-the-complex__slider-link"
               data-fancybox="photos-of-the-complex"
               style="background-image: url(content/images/complexes/complex-example/complex-example__image-2.jpg)">
            </a>
        </li>
        <li class="photos-of-the-complex__slider-item">
            <a href="content/images/complexes/complex-example/complex-example__image-3.jpg"
               class="photos-of-the-complex__slider-link"
               data-fancybox="photos-of-the-complex"
               style="background-image: url(content/images/complexes/complex-example/complex-example__image-3.jpg)"></a>
        </li>
    </ul>
</section>
<!-- /Section: photos-of-the-complex -->