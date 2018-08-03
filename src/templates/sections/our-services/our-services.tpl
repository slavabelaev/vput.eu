<% var lang = JSON.parse(include('our-services_lang_ru.json')); %>

<!-- Section: our-services -->
<section class="our-services">
    <h2 class="mb-4 text-center"><%= lang.title %></h2>
    <nav class="our-services__nav row">
        <a class="our-services__nav-item our-services_image_cleaning col-lg col-sm-6"
           href="cleaning.html"><%= lang.cleaning %></a>
        <a class="our-services__nav-item our-services_image_escort col-lg col-sm-6"
           href="escort.html"><%= lang.escort %></a>
        <a class="our-services__nav-item our-services_image_transfer col-lg col-sm-6"
           href="transfer.html"><%= lang.transfer %></a>
        <a class="our-services__nav-item our-services_image_car-rental col-lg col-sm-6"
           href="car-rental.html"><%= lang.car_rental %></a>
        <a class="our-services__nav-item our-services_image_management col-lg col-sm-6"
           href="management.html"><%= lang.management %></a>
    </nav>
</section>
<!-- /Section: our-services -->