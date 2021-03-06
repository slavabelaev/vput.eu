<% var lang = JSON.parse(include('complex-tabs_lang_ru.json')); %>

<!-- Common: complex-tabs -->
<div class="complex-tabs">
    <ul class="nav nav-tabs"
        role="tablist">
        <li class="nav-item">
            <a href="#"
               class="nav-link active"
               data-toggle="tab"
               data-target=".complex-tabs__about-the-complex-collapse"
               role="tab"><%= lang.description %></a>
        </li>
        <li class="nav-item">
            <a href="#"
               class="nav-link"
               data-toggle="tab"
               data-target=".complex-tabs__apartments-in-the-complex-collapse"
               role="tab"><%= lang.apartments %></a>
        </li>
        <li class="nav-item">
            <a href="#"
               class="nav-link"
               data-toggle="tab"
               data-target=".complex-tabs__complex-on-the-map-collapse"
               role="tab"><%= lang.on_the_map %></a>
        </li>
    </ul>
    <div class="tab-content">
        <div class="complex-tabs__about-the-complex-collapse tab-pane fade show active"
             role="tabpanel">
            <div class="complex-tabs__section complex-tabs__about-the-complex">
                <%- include('../../sections/about-the-complex/about-the-complex.tpl'); %>
            </div>
        </div>
        <div class="complex-tabs__apartments-in-the-complex-collapse tab-pane fade"
             role="tabpanel">
            <div class="complex-tabs__section complex-tabs__apartments-in-the-complex">
                <%- include('../../sections/apartments-in-the-complex/apartments-in-the-complex.tpl'); %>
            </div>
        </div>
        <div class="complex-tabs__complex-on-the-map-collapse tab-pane fade"
             role="tabpanel">
            <div class="complex-tabs__section complex-tabs__complex-on-the-map">
                <%- include('../../sections/complex-on-the-map/complex-on-the-map.tpl'); %>
            </div>
        </div>
    </div>
</div>
<!-- /Common: complex-tabs -->