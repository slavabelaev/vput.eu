<% var lang = JSON.parse(include('cities-tabs_lang_ru.json')); %>
<% var data = JSON.parse(include('cities-tabs__data.json')); %>

<!-- Common: cities-tabs -->
<div class="cities-tabs">
    <ul class="cities-tabs__header nav nav-tabs"
        role="tablist">
        <% for(var i = 0;i < data.tabs.length;i++) { %>
        <li class="nav-item">
            <a class="nav-link <%= data.tabs[i].is_active ? 'active' : '' %>"
               data-toggle="tab"
               data-target=".cities-tabs__tab-<%= i %>"
               href="#"
               role="tab"
               aria-selected="true"><%= data.tabs[i].title %> (<%= data.tabs[i].total_offers %>)</a>
        </li>
        <% } %>
    </ul>
    <div class="cities-tabs__content tab-content bg-white">
        <% for(var i = 0;i < data.tabs.length;i++) { %>
        <div class="cities-tabs__tab-<%= i %> tab-pane fade <%= data.tabs[i].is_active ? 'active show' : '' %>"
             role="tabpanel">
            <nav class="cities-tabs__nav">
                <% for(var j = 0;j < data.tabs[i].cities.length;j++) { %>
                <a href="#"
                   data-id="<%= data.tabs[i].cities[j].id %>"
                   data-name="<%= data.tabs[i].cities[j].name %>"
                   class="cities-tabs__link">
                    <%= data.tabs[i].cities[j].name %>
                    <span class="cities-tabs__count-offers badge badge-primary"><%= data.tabs[i].cities[j].count_offers %></span>
                </a>
                <% } %>
            </nav>
        </div>
        <% } %>
    </div>
</div>
<!-- /Common: cities-tabs -->