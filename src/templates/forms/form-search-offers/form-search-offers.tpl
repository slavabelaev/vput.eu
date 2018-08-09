<% eval(include('../../../../develop/common.js')) %>
<% var lang = JSON.parse(include('form-search-offers_lang_ru.json')); %>

<!-- Form: form-search-offers -->
<form action="search.html"
      _action="https://vput.ru/search/"
      class="form-search-offers">

    <fieldset class="form-search-offers__main-fieldset">
        <ul class="form-row">
            <li class="form-search-offers__cityId-col form-group col">
                <input type="hidden"
                       name="filters[cityId]">
                <input class="form-search-offers__cities-tabs-toggle custom-select disabled custom-select-lg collapsed"
                       readonly
                       onfocus="this.blur()"
                       placeholder="<%= lang.city %>"
                       data-toggle="collapse"
                       data-target=".form-search-offers__cities-tabs">
            </li>
            <li class="form-search-offers__startDate-col form-group col">
                <input name="filters[startDate]"
                       class="custom-select custom-select-lg"
                       placeholder="<%= lang.start_date %>">
            </li>
            <li class="form-search-offers__endDate-col form-group col">
                <input name="filters[endDate]"
                       class="custom-select custom-select-lg"
                       placeholder="<%= lang.end_date %>">
            </li>
            <li class="form-search-offers__guests-col form-group col">
                <select name="filters[guests]"
                        id="guests"
                        class="custom-select custom-select-lg">
                    <% for(var i = 1;i <= 10;i++) { %>
                    <option value="<%= i %>"><%= i %> <%= Utils.declension(i, lang._guest); %></option>
                    <% } %>
                </select>
            </li>
            <li class="form-search-offers__search-by-complexes-col form-group col">
                <button type="submit"
                        class="form-search-offers__search-by-complexes-button btn btn-outline-primary btn-lg w-100"><%= lang.search_by_complexes %></button>
            </li>
            <li class="form-search-offers__other-filters-col form-group col">
                <a href="#"
                   class="form-search-offers__other-filters-toggle-button btn btn-outline-primary btn-lg w-100 collapsed"
                   data-toggle="collapse"
                   data-target=".form-search-offers__other-filters"><%= lang.more_filters %></a>
            </li>
            <li class="form-search-offers__id-col form-group col">
                <input type="number"
                       name="filters[id]"
                       class="form-control form-control-lg"
                       placeholder="<%= lang.id %>">
            </li>
            <li class="form-search-offers__search-col form-group col">
                <button type="submit"
                        class="form-search-offers__search-button btn btn-secondary btn-lg w-100"><%= lang.search %></button>
            </li>
        </ul>
    </fieldset>

    <div class="form-search-offers__show-booked custom-control custom-checkbox">
        <input type="checkbox"
               class="form-search-offers__show-booked-control custom-control-input"
               id="form-search-offers__show-booked-control"
               name="filters[doNotShowBooked]">
        <label class="custom-control-label"
               for="form-search-offers__show-booked-control"><%= lang.do_not_show_booked %></label>
    </div>

    <div class="form-search-offers__cities-tabs collapse">
        <%- include('../../common.blocks/cities-tabs/cities-tabs.tpl'); %>
    </div>

    <!-- Other filters -->
    <div class="form-search-offers__other-filters collapse">
        <fieldset class="form-search-offers__fieldset">
            <div class="form-row align-items-center">
                <legend class="form-search-offers__legend col-md-3 text-center text-md-left mb-md-0 mt-md-3"><%= lang.price_per_day %></legend>
                <ul class="form-search-offers__options-list col-md-9">
                    <li class="form-group d-none">
                        <input type="number"
                               name="filters[prices][minPrice]"
                               class="form-control"
                               placeholder="<%= lang.min_price %>">
                    </li>
                    <li class="form-group d-none">
                        <input type="number"
                               name="filters[prices][maxPrice]"
                               class="form-control"
                               placeholder="<%= lang.max_price %>">
                    </li>
                    <li class="form-group mb-0 mb-4 mt-md-5">
                        <div class="form-search-offers__slider"
                             data-min="0"
                             data-max="768"></div>
                    </li>
                </ul>
            </div>
        </fieldset>

        <fieldset class="form-search-offers__fieldset pt-3">
            <ul class="form-search-offers__options-list form-row">
                <li class="form-group col-xl-3 col-sm-6">
                    <!-- Input Group -->
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text">
                                <i class="icon icon__home"></i>
                            </div>
                        </div>
                        <label for="form-search-offers__home"
                               class="form-control"><%= lang.home %></label>
                        <div class="input-group-append">
                            <div class="custom-control custom-checkbox input-group-text">
                                <input type="checkbox"
                                       name="filters[realtyTypes][2]"
                                       class="custom-control-input"
                                       id="form-search-offers__home">
                                <label class="custom-control-label"
                                       for="form-search-offers__home"></label>
                            </div>
                        </div>
                    </div>
                    <!-- /Input Group -->
                </li>
                <li class="form-group col-xl-3 col-sm-6">
                    <!-- Input Group -->
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text">
                                <i class="icon icon__building"></i>
                            </div>
                        </div>
                        <label for="form-search-offers__apartment"
                               class="form-control"><%= lang.apartment %></label>
                        <div class="input-group-append">
                            <div class="custom-control custom-checkbox input-group-text">
                                <input type="checkbox"
                                       name="filters[realtyTypes][1]"
                                       class="custom-control-input"
                                       id="form-search-offers__apartment">
                                <label class="custom-control-label"
                                       for="form-search-offers__apartment"></label>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="form-group col-xl-3 col-sm-6">
                    <!-- Input Group -->
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text"><span class="icon icon__room"></span></div>
                        </div>
                        <label for="form-search-offers__room"
                               class="form-control"><%= lang.room %></label>
                        <div class="input-group-append">
                            <div class="custom-control custom-checkbox input-group-text">
                                <input type="checkbox"
                                       name="filters[realtyTypes][28]"
                                       class="custom-control-input"
                                       id="form-search-offers__room">
                                <label class="custom-control-label"
                                       for="form-search-offers__room"></label>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="form-group col-xl-3 col-sm-6">
                    <!-- Input Group -->
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text">
                                <i class="icon icon__hotel"></i>
                            </div>
                        </div>
                        <label for="form-search-offers__hotel"
                               class="form-control"><%= lang.hotel %></label>
                        <div class="input-group-append">
                            <div class="custom-control custom-checkbox input-group-text">
                                <input type="checkbox"
                                       name="filters[realtyTypes][31]"
                                       class="custom-control-input"
                                       id="form-search-offers__hotel">
                                <label class="custom-control-label"
                                       for="form-search-offers__hotel"></label>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </fieldset>

        <fieldset class="form-search-offers__fieldset pt-3">
            <ul class="form-search-offers__options-list form-row">
                <li class="form-group col-xl-3 col-sm-6">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text">
                                <i class="icon icon__door"></i>
                            </div>
                        </div>
                        <select class="custom-select"
                                name="filters[rooms]">
                            <option selected
                                    disabled><%= lang.number_of_rooms %></option>
                            <% for(var i = 1;i <= 10;i++) { %>
                            <option value="<%= i %>"><%= i %> <%= Utils.declension(i, lang._room); %></option>
                            <% } %>
                        </select>
                    </div>
                </li>
                <li class="form-group col-xl-3 col-sm-6">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text">
                                <i class="icon icon__bathroom"></i>
                            </div>
                        </div>
                        <select class="custom-select"
                                name="filters[bathRooms]">
                            <option selected
                                    disabled><%= lang.number_of_bathrooms %></option>
                            <% for(var i = 1;i <= 10;i++) { %>
                            <option value="<%= i %>"><%= i %> <%= Utils.declension(i, lang._bathroom); %></option>
                            <% } %>
                        </select>
                    </div>
                </li>
                <li class="form-group col-xl-3 col-sm-6">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text">
                                <i class="icon icon__bed"></i>
                            </div>
                        </div>
                        <select class="custom-select"
                                name="filters[beds]">
                            <option selected
                                    disabled><%= lang.number_of_beds %></option>
                            <% for(var i = 1;i <= 10;i++) { %>
                            <option value="<%= i %>"><%= i %> <%= Utils.declension(i, lang._bed); %></option>
                            <% } %>
                        </select>
                    </div>
                </li>
            </ul>
        </fieldset>

        <ul class="form-search-offers__fieldset-list row pt-3">
            <li class="col-xl-3 col-sm-6 mb-3">
                <fieldset class="form-search-offers__fieldset">
                    <legend class="form-search-offers__legend"><%= lang.amenities %></legend>
                    <ul class="form-search-offers__options-list">
                        <li class="form-group">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox"
                                       name="filters[parameters][266]"
                                       class="custom-control-input"
                                       id="form-search-offers__parking">
                                <label class="custom-control-label"
                                       for="form-search-offers__parking"><%= lang.parking %></label>
                            </div>
                        </li>
                        <li class="form-group">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox"
                                       name="filters[parameters][254]"
                                       class="custom-control-input"
                                       id="form-search-offers__pool">
                                <label class="custom-control-label"
                                       for="form-search-offers__pool"><%= lang.pool %></label>
                            </div>
                        </li>
                        <li class="form-group">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox"
                                       name="filters[parameters][259]"
                                       class="custom-control-input"
                                       id="form-search-offers__spa">
                                <label class="custom-control-label"
                                       for="form-search-offers__spa"><%= lang.spa %></label>
                            </div>
                        </li>
                        <li class="form-group">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox"
                                       name="filters[parameters][245]"
                                       class="custom-control-input"
                                       id="form-search-offers__lift">
                                <label class="custom-control-label"
                                       for="form-search-offers__lift"><%= lang.lift %></label>
                            </div>
                        </li>
                    </ul>
                </fieldset>
            </li>
            <li class="col-xl-3 col-sm-6 mb-3">
                <fieldset class="form-search-offers__fieldset">
                    <legend class="form-search-offers__legend"><%= lang.appliances %></legend>
                    <ul class="form-search-offers__options-list">
                        <li class="form-group">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox"
                                       name="filters[parameters][243]"
                                       class="custom-control-input"
                                       id="form-search-offers__air-conditioning">
                                <label class="custom-control-label"
                                       for="form-search-offers__air-conditioning"><%= lang.air_conditioning %></label>
                            </div>
                        </li>
                        <li class="form-group">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox"
                                       name="filters[parameters][271]"
                                       class="custom-control-input"
                                       id="form-search-offers__cooker">
                                <label class="custom-control-label"
                                       for="form-search-offers__cooker"><%= lang.cooker %></label>
                            </div>
                        </li>
                        <li class="form-group">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox"
                                       name="filters[parameters][270]"
                                       class="custom-control-input"
                                       id="form-search-offers__refrigerator">
                                <label class="custom-control-label"
                                       for="form-search-offers__refrigerator"><%= lang.refrigerator %></label>
                            </div>
                        </li>
                        <li class="form-group">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox"
                                       name="filters[parameters][287]"
                                       class="custom-control-input"
                                       id="form-search-offers__tv">
                                <label class="custom-control-label" for="form-search-offers__tv"><%= lang.tv %></label>
                            </div>
                        </li>
                        <li class="form-group">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox"
                                       name="filters[parameters][280]"
                                       value="280"
                                       class="custom-control-input"
                                       id="form-search-offers__washer">
                                <label class="custom-control-label" for="form-search-offers__washer"><%= lang.washer %></label>
                            </div>
                        </li>
                    </ul>
                </fieldset>
            </li>
            <li class="col-xl-3 col-sm-6 mb-3">
                <fieldset class="form-search-offers__fieldset">
                    <legend class="form-search-offers__legend"><%= lang.house_rules %></legend>
                    <ul class="form-search-offers__options-list">
                        <li class="form-group">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox"
                                       name="filters[parameters][247]"
                                       class="custom-control-input"
                                       id="form-search-offers__smoking">
                                <label class="custom-control-label"
                                       for="form-search-offers__smoking"><%= lang.smoking %></label>
                            </div>
                        </li>
                        <li class="form-group">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox"
                                       name="filters[parameters][80]"
                                       class="custom-control-input"
                                       id="form-search-offers__children">
                                <label class="custom-control-label"
                                       for="form-search-offers__children"><%= lang.children %></label>
                            </div>
                        </li>
                        <li class="form-group">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox"
                                       name="filters[parameters][240]"
                                       class="custom-control-input"
                                       id="form-search-offers__pets">
                                <label class="custom-control-label"
                                       for="form-search-offers__pets"><%= lang.pets %></label>
                            </div>
                        </li>
                    </ul>
                </fieldset>
            </li>
            <li class="col-xl-3 col-sm-6 mb-3">
                <fieldset class="form-search-offers__fieldset">
                    <legend class="form-search-offers__legend"><%= lang.sorting %></legend>
                    <ul class="form-search-offers__options-list">
                        <li class="form-group">
                            <div class="custom-control custom-radio">
                                <input type="radio"
                                       name="filters[sorting]"
                                       class="custom-control-input"
                                       id="form-search-offers__sorting_from_cheap-to-expensive">
                                <label class="custom-control-label"
                                       for="form-search-offers__sorting_from_cheap-to-expensive"><%= lang.from_cheap_to_expensive %></label>
                            </div>
                        </li>

                        <li class="form-group">
                            <div class="custom-control custom-radio">
                                <input type="radio"
                                       name="filters[sorting]"
                                       class="custom-control-input"
                                       id="form-search-offers__sorting_from_expensive-to-cheap">
                                <label class="custom-control-label"
                                       for="form-search-offers__sorting_from_expensive-to-cheap"><%= lang.from_expensive_to_cheap %></label>
                            </div>
                        </li>
                    </ul>
                </fieldset>
            </li>
        </ul>
    </div>
    <!-- /Other filters -->
</form>
<!-- /Form: form-search-offers -->