<% eval(include('../../_utils/common.js')) %>
<% var lang = JSON.parse(include('characteristics-of-the-complex_lang_ru.json')); %>

<!-- Section: characteristics-of-the-complex -->
<section class="characteristics-of-the-complex">
    <h2 class="characteristics-of-the-complex__title mb-3"><%= lang.title %></h2>
    <ul class="characteristics-of-the-complex__list row">
        <li class="characteristics-of-the-complex__list-item col-sm-6">
            <figure class="figure d-flex">
                <i class="icon icon__security mr-3"></i>
                <figcaption class="characteristics-of-the-complex__caption"><%= lang.security %></figcaption>
            </figure>
        </li>
        <li class="characteristics-of-the-complex__list-item col-sm-6">
            <figure class="figure d-flex">
                <i class="icon icon__coffee mr-3"></i>
                <figcaption class="characteristics-of-the-complex__caption"><%= lang.cafe %></figcaption>
            </figure>
        </li>
        <li class="characteristics-of-the-complex__list-item col-sm-6">
            <figure class="figure d-flex">
                <i class="icon icon__parking mr-3"></i>
                <figcaption class="characteristics-of-the-complex__caption"><%= lang.parking %> <small class="text-muted">(20 <%= Utils.declension(20, lang._meter); %>)</small></figcaption>
            </figure>
        </li>
        <li class="characteristics-of-the-complex__list-item col-sm-6">
            <figure class="figure d-flex">
                <i class="icon icon__bike mr-3"></i>
                <figcaption class="characteristics-of-the-complex__caption"><%= lang.bicycles_for_rent %></figcaption>
            </figure>
        </li>
        <li class="characteristics-of-the-complex__list-item col-sm-6">
            <figure class="figure d-flex">
                <i class="icon icon__sea mr-3"></i>
                <figcaption class="characteristics-of-the-complex__caption"><%= lang.access_to_the_sea %> <small class="text-muted">(20 <%= Utils.declension(20, lang._meter); %>)</small></figcaption>
            </figure>
        </li>
        <li class="characteristics-of-the-complex__list-item col-sm-6">
            <figure class="figure d-flex">
                <i class="icon icon__massage mr-3"></i>
                <figcaption class="characteristics-of-the-complex__caption"><%= lang.massage %></figcaption>
            </figure>
        </li>
        <li class="characteristics-of-the-complex__list-item col-sm-6">
            <figure class="figure d-flex">
                <span class="icon icon__pool mr-3"></span>
                <figcaption class="characteristics-of-the-complex__caption"><%= lang.pool %> <small class="text-muted">(3 <%= Utils.declension(3, lang._piece); %>)</small></figcaption>
            </figure>
        </li>
        <li class="characteristics-of-the-complex__list-item col-sm-6">
            <figure class="figure d-flex">
                <i class="icon icon__SPA mr-3"></i>
                <figcaption class="characteristics-of-the-complex__caption"><%= lang.spa %></figcaption>
            </figure>
        </li>
    </ul>
</section>
<!-- /Section: characteristics-of-the-complex -->