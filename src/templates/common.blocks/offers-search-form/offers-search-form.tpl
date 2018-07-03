<!-- Offers Search Form -->
<form action="search.html"
      _action="https://vput.ru/search/"
      class="offers-search-form">
    <div class="form-row">
        <div class="offers-search-form__cityId-col form-group col">
            <input type="hidden" name="filters[cityId]">
            <input class="offers-search-form__cities-tabs-toggle custom-select custom-select-lg"
                   readonly
                   placeholder="What is your destination?"
                   data-toggle="collapse"
                   data-target=".offers-search-form__cities-dropdown">
        </div>
        <div class="offers-search-form__startDate-col form-group col">
            <input name="filters[startDate]"
                   class="custom-select custom-select-lg"
                   placeholder="Check-in">
        </div>
        <div class="offers-search-form__endDate-col form-group col">
            <input name="filters[endDate]"
                   class="custom-select custom-select-lg"
                   placeholder="Check-out">
        </div>
        <div class="offers-search-form__guests-col form-group col">
            <select name="filters[guests]"
                    id="guests"
                    class="custom-select custom-select-lg">
                <option value="1">1 guest</option>
            </select>
        </div>
        <div class="offers-search-form__search-by-complexes-col form-group col">
            <a href="#"
               class="offers-search-form__search-by-complexes-button btn btn-outline-primary btn-lg w-100">Search by complexes</a>
        </div>
        <div class="offers-search-form__other-filters-col form-group col">
            <a href="#"
               class="offers-search-form__search-by-complexes-button btn btn-outline-primary btn-lg w-100"
               data-toggle="collapse"
               data-target=".offers-search-form__other-filters">More filters</a>
        </div>
        <div class="offers-search-form__id-col form-group col">
            <input type="number"
                   name="filters[id]"
                   class="form-control form-control-lg"
                   placeholder="ID">
        </div>
        <div class="offers-search-form__search-col form-group col">
            <button type="submit"
                    class="offers-search-form__search-button btn btn-secondary btn-lg w-100">Search</button>
        </div>
    </div>

    <div class="offers-search-form__show-booked custom-control custom-checkbox">
        <input type="checkbox"
               class="offers-search-form__show-booked-control custom-control-input"
               id="offers-search-form__show-booked-control"
               name="filters[showBooked]">
        <label class="custom-control-label"
               for="offers-search-form__show-booked-control">Не показывать забронированные</label>
    </div>


    <div class="offers-search-form__cities-dropdown collapse">
        <a href="#"
           data-toggle="collapse"
           data-target=".offers-search-form__cities-dropdown"
           class="offers-search-form__cities-dropdown-close close"
           aria-label="Close"><i class="icon icon__close icon_style_light"></i></a>
        <%- include('../cities-tabs/cities-tabs.tpl'); %>
    </div>

    <!-- Other filters -->
    <div class="offers-search-form__other-filters collapse">
        <div class="offers-search-form__fieldset mt-4">
            <legend class="offers-search-form__legend">Price per day</legend>
            <div class="offers-search-form__options-list form-row">
                <div class="form-group col d-none">
                    <input type="number" name="filters[prices][minPrice]" class="form-control" placeholder="Min. price">
                </div>
                <div class="form-group col d-none">
                    <input type="number" name="filters[prices][maxPrice]" class="form-control" placeholder="Max. price">
                </div>
                <div class="form-group col">
                    <div class="offers-search-form__slider"
                         data-min="0"
                         data-max="768"></div>
                </div>
            </div>
        </div>

        <div class="offers-search-form__fieldset">
            <div class="offers-search-form__options-list form-row">
                <div class="form-group col">
                    <!-- Input Group -->
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text"><span class="icon icon__home"></span></div>
                        </div>
                        <label for="offers-search-form__home" class="form-control">Home</label>
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <input type="checkbox" name="filters[realtyTypes][2]" id="offers-search-form__home">
                            </div>
                        </div>
                    </div>
                    <!-- /Input Group -->
                </div>
                <div class="form-group col">
                    <!-- Input Group -->
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text"><span class="icon icon__building"></span></div>
                        </div>
                        <label for="offers-search-form__apartament" class="form-control">Apartment</label>
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <input type="checkbox" name="filters[realtyTypes][1]"
                                       id="offers-search-form__apartament">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group col">
                    <!-- Input Group -->
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text"><span class="icon icon__room"></span></div>
                        </div>
                        <label for="offers-search-form__room" class="form-control">Room</label>
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <input type="checkbox" name="filters[realtyTypes][28]" id="offers-search-form__room">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group col">
                    <!-- Input Group -->
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text"><span class="icon icon__hotel"></span></div>
                        </div>
                        <label for="offers-search-form__hotel" class="form-control">Hotel</label>
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <input type="checkbox" name="filters[realtyTypes][31]" id="offers-search-form__hotel">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="offers-search-form__fieldset">
            <div class="offers-search-form__options-list form-row">
                <div class="form-group col">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text"><span class="icon icon__door"></span></div>
                        </div>
                        <select class="custom-select" name="filters[rooms]">
                            <option>Rooms</option>
                        </select>
                    </div>
                </div>
                <div class="form-group col">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text"><span class="icon icon__bathroom"></span></div>
                        </div>
                        <select class="custom-select" name="filters[bathRooms]">
                            <option>Bathrooms</option>
                        </select>
                    </div>
                </div>
                <div class="form-group col">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text"><span class="icon icon__bed"></span></div>
                        </div>
                        <select class="custom-select" name="filters[beds]">
                            <option>Beds</option>
                        </select>
                    </div>
                </div>
                <div class="form-group col"></div>
            </div>
        </div>

        <div class="offers-search-form__fieldset">
            <legend class="offers-search-form__legend">Amenities</legend>
            <div class="offers-search-form__options-list form-row">
                <div class="form-group col">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" name="filters[parameters][266]" class="custom-control-input"
                               id="offers-search-form__parking">
                        <label class="custom-control-label" for="offers-search-form__parking">Parking</label>
                    </div>
                </div>
                <div class="form-group col">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" name="filters[parameters][254]" class="custom-control-input"
                               id="offers-search-form__pool">
                        <label class="custom-control-label" for="offers-search-form__pool">Pool</label>
                    </div>
                </div>
                <div class="form-group col">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" name="filters[parameters][259]" class="custom-control-input"
                               id="offers-search-form__spa">
                        <label class="custom-control-label" for="offers-search-form__spa">Spa</label>
                    </div>
                </div>
                <div class="form-group col">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" name="filters[parameters][245]" class="custom-control-input"
                               id="offers-search-form__lift">
                        <label class="custom-control-label" for="offers-search-form__lift">Lift</label>
                    </div>
                </div>
            </div>
        </div>

        <div class="offers-search-form__fieldset">
            <legend class="offers-search-form__legend">Appliances</legend>
            <div class="offers-search-form__options-list form-row">
                <div class="form-group col">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" name="filters[parameters][243]" class="custom-control-input"
                               id="offers-search-form__air-conditioning">
                        <label class="custom-control-label"
                               for="offers-search-form__air-conditioning">Air-conditioning</label>
                    </div>
                </div>
                <div class="form-group col">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" name="filters[parameters][271]" class="custom-control-input"
                               id="offers-search-form__cooker">
                        <label class="custom-control-label" for="offers-search-form__cooker">Cooker</label>
                    </div>
                </div>
                <div class="form-group col">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" name="filters[parameters][270]" class="custom-control-input"
                               id="offers-search-form__refrigerator">
                        <label class="custom-control-label" for="offers-search-form__refrigerator">Refrigerator</label>
                    </div>
                </div>
                <div class="form-group col">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" name="filters[parameters][287]" class="custom-control-input"
                               id="offers-search-form__tv">
                        <label class="custom-control-label" for="offers-search-form__tv">TV</label>
                    </div>
                </div>
            </div>
        </div>

        <div class="offers-search-form__fieldset">
            <legend class="offers-search-form__legend">House rules</legend>
            <div class="offers-search-form__options-list form-row">
                <div class="form-group col">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" name="filters[parameters][247]" class="custom-control-input"
                               id="offers-search-form__smoking">
                        <label class="custom-control-label" for="offers-search-form__smoking">Smoking</label>
                    </div>
                </div>
                <div class="form-group col">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" name="filters[parameters][80]" class="custom-control-input"
                               id="offers-search-form__children">
                        <label class="custom-control-label" for="offers-search-form__children">Children</label>
                    </div>
                </div>
                <div class="form-group col">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" name="filters[parameters][240]" class="custom-control-input"
                               id="offers-search-form__pets">
                        <label class="custom-control-label" for="offers-search-form__pets">Pets</label>
                    </div>
                </div>
                <div class="form-group col"></div>
            </div>
        </div>
    </div>
    <!-- /Other filters -->
</form>
<!-- /Offers Search Form -->