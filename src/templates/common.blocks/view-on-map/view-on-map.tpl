<% var lang = JSON.parse(include('view-on-map_lang_ru.json')); %>
<%
    var data = {
        latitude: "42.69955610242388",
        longitude: "27.7021554442872"
    };
%>

<!-- Block: view-on-map -->
<iframe class="view-on-map"
        width="100%"
        height="450"
        frameborder="0"
        allowfullscreen
        src="https://maps.google.com/maps?q=<%= data.latitude %>,<%= data.longitude %>&output=embed">
</iframe>
<!-- /Block: view-on-map -->