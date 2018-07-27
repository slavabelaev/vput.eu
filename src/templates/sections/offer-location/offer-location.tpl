<% var lang = JSON.parse(include('offer-location_lang_ru.json')); %>
<%
    var data = {
        title: "Болгария, Святой Влас",
        latitude: "42.69955610242388",
        longitude: "27.7021554442872"
    }
%>

<!-- Section: offer-location -->
<section class="offer-location">
    <h2 class="offer-location__title container mb-4"><%= data.title %></h2>
    <iframe class="offer-location__map"
            width="100%"
            height="450"
            frameborder="0"
            allowfullscreen
            src="https://maps.google.com/maps?q=<%= data.latitude %>,<%= data.longitude %>&output=embed">
    </iframe>
</section>
<!-- /Section: offer-location -->