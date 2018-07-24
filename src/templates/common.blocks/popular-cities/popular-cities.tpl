<% var lang = JSON.parse(include('popular-cities_lang_ru.json')); %>
<% var data = JSON.parse(include('popular-cities__data.json')); %>

<!-- Common: popular-cities -->
<dl class="popular-cities row">
    <dt class="popular-cities__title col-auto"><%= lang.title %></dt>
    <% for(var i = 0;i < data.cities.length; i++) { %>
    <dd class="popular-cities__item col-auto">
        <a href="#"
           class="popular-cities__link"
           data-value="<%= data.cities[i].value %>"
           data-name="<%= data.cities[i].name %>"
           data-goal="<%= data.cities[i].goal %>"><%= data.cities[i].name %></a>
    </dd>
    <% } %>
</dl>
<!-- /Common: popular-cities -->