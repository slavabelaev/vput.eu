<!-- Offers Search Form -->
<form action="https://vput.ru/search/" class="offers-search-form">
    <div class="form-row">
        <div class="form-group col-md-6 col-lg-4 m-lg-0">
            <input type="hidden" name="filters[cityId]">
            <input class="offers-search-form__cities-tabs-toggle custom-select custom-select-lg"
                   readonly
                   placeholder="What is your destination?"
                   data-toggle="collapse" href="#offers-search-form__cities-dropdown">
        </div>
        <div class="form-group col-6 col-lg-2 col-md-3 m-lg-0">
            <input name="filters[startDate]" class="custom-select custom-select-lg" placeholder="Check-in">
        </div>
        <div class="form-group col-6 col-lg-2 col-md-3 m-lg-0">
            <input name="filters[endDate]" class="custom-select custom-select-lg" placeholder="Check-out">
        </div>
        <div class="form-group col m-md-0">
            <select name="filters[guests]" id="guests" class="custom-select custom-select-lg">
                <option value="1">1 guest</option>
            </select>
        </div>
        <div class="form-group col m-0">
            <button type="submit" class="btn btn-secondary btn-lg w-100">Search</button>
        </div>
        <div class="form-group col m-0">
            <a class="btn btn-outline-primary btn-lg" data-toggle="collapse" href="#offers-search-form__other-filters">More filters</a>
        </div>
    </div>


    <div id="offers-search-form__cities-dropdown" class="collapse">
        <%- include('../cities-tabs/cities-tabs.tpl'); %>
    </div>

    <!-- Other filters -->
    <div id="offers-search-form__other-filters" class="collapse">
        <div class="form-row mt-3">
            <div class="col-3">
                <legend>Price per day</legend>
            </div>
            <div class="form-group col-3 d-none">
                <input type="number" name="filters[prices][minPrice]" class="form-control" placeholder="Min. price">
            </div>
            <div class="form-group col-3 d-none">
                <input type="number" name="filters[prices][maxPrice]" class="form-control" placeholder="Max. price">
            </div>
            <div class="form-group col-9">
                <div class="offers-search-form__slider mt-3"></div>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-sm-3">
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
            <div class="form-group col-sm-3">
                <!-- Input Group -->
                <div class="input-group">
                    <div class="input-group-prepend">
                        <div class="input-group-text"><span class="icon icon__skyscraper"></span></div>
                    </div>
                    <label for="offers-search-form__apartament" class="form-control">Apartment</label>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <input type="checkbox" name="filters[realtyTypes][1]" id="offers-search-form__apartament">
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group col-sm-3">
                <!-- Input Group -->
                <div class="input-group">
                    <div class="input-group-prepend">
                        <div class="input-group-text"><span class="icon icon__door"></span></div>
                    </div>
                    <label for="offers-search-form__room" class="form-control">Room</label>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <input type="checkbox" name="filters[realtyTypes][28]" id="offers-search-form__room">
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group col-sm-3">
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

        <div class="form-row">
            <div class="form-group col-sm-3">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <div class="input-group-text"><span class="icon icon__opened-door"></span></div>
                    </div>
                    <select class="custom-select" name="filters[rooms]">
                        <option>Rooms</option>
                    </select>
                </div>
            </div>
            <div class="form-group col-sm-3">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <div class="input-group-text"><span class="icon icon__bathroom"></span></div>
                    </div>
                    <select class="custom-select" name="filters[bathRooms]">
                        <option>Bathrooms</option>
                    </select>
                </div>
            </div>
            <div class="form-group col-sm-3">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <div class="input-group-text"><span class="icon icon__bed"></span></div>
                    </div>
                    <select class="custom-select" name="filters[beds]">
                        <option>Beds</option>
                    </select>
                </div>
            </div>
        </div>

        <div class="form-row">
            <div class="col-3">
                <legend class="offers-search-form__other-filters-legend">Amenities</legend>
            </div>
            <div class="form-group col-sm-2">
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" name="filters[parameters][266]" class="custom-control-input" id="offers-search-form__parking">
                    <label class="custom-control-label" for="offers-search-form__parking">Parking</label>
                </div>
            </div>
            <div class="form-group col-sm-2">
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" name="filters[parameters][254]" class="custom-control-input" id="offers-search-form__pool">
                    <label class="custom-control-label" for="offers-search-form__pool">Pool</label>
                </div>
            </div>
            <div class="form-group col-sm-2">
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" name="filters[parameters][259]" class="custom-control-input" id="offers-search-form__spa">
                    <label class="custom-control-label" for="offers-search-form__spa">Spa</label>
                </div>
            </div>
            <div class="form-group col-sm-2">
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" name="filters[parameters][245]" class="custom-control-input" id="offers-search-form__lift">
                    <label class="custom-control-label" for="offers-search-form__lift">Lift</label>
                </div>
            </div>
        </div>

        <div class="form-row">
            <div class="col-3">
                <legend class="offers-search-form__other-filters-legend">Appliances</legend>
            </div>
            <div class="form-group col-sm-2">
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" name="filters[parameters][243]" class="custom-control-input" id="offers-search-form__air-conditioning">
                    <label class="custom-control-label" for="offers-search-form__air-conditioning">Air-conditioning</label>
                </div>
            </div>
            <div class="form-group col-sm-2">
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" name="filters[parameters][271]" class="custom-control-input" id="offers-search-form__cooker">
                    <label class="custom-control-label" for="offers-search-form__cooker">Cooker</label>
                </div>
            </div>
            <div class="form-group col-sm-2">
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" name="filters[parameters][270]" class="custom-control-input" id="offers-search-form__refrigerator">
                    <label class="custom-control-label" for="offers-search-form__refrigerator">Refrigerator</label>
                </div>
            </div>
            <div class="form-group col-sm-2">
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" name="filters[parameters][287]" class="custom-control-input" id="offers-search-form__tv">
                    <label class="custom-control-label" for="offers-search-form__tv">TV</label>
                </div>
            </div>
        </div>

        <div class="form-row">
            <div class="col-3">
                <legend class="offers-search-form__other-filters-legend">House rules</legend>
            </div>
            <div class="form-group col-sm-2">
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" name="filters[parameters][247]" class="custom-control-input" id="offers-search-form__smoking">
                    <label class="custom-control-label" for="offers-search-form__smoking">Smoking</label>
                </div>
            </div>
            <div class="form-group col-sm-2">
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" name="filters[parameters][80]" class="custom-control-input" id="offers-search-form__children">
                    <label class="custom-control-label" for="offers-search-form__children">Children</label>
                </div>
            </div>
            <div class="form-group col-sm-2">
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" name="filters[parameters][240]" class="custom-control-input" id="offers-search-form__pets">
                    <label class="custom-control-label" for="offers-search-form__pets">Pets</label>
                </div>
            </div>
        </div>

        <div class="form-row">
            <div class="col-3">
                <legend class="offers-search-form__other-filters-legend">ID search</legend>
            </div>
            <div class="form-group col-sm-2">
                <input type="number" name="filters[id]" class="form-control mb-0">
            </div>
        </div>
    </div>
    <!-- /Other filters -->
</form>
<!-- /Offers Search Form -->