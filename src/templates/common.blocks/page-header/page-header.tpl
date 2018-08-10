<% var lang = JSON.parse(include('page-header_lang_ru.json')); %>

<!-- Common: page-header -->
<header class="page-header" data-headroom>
    <nav class="navbar navbar-expand-md navbar-light container">
        <a class="page-header__logo mr-md-4"
           href="index.html"></a>
        <a class="page-header__favorites-link icon icon__heart icon_size_32 ml-auto mr-4 d-md-none"
           href="favorites.html">99</a>
        <button class="navbar-toggler hamburger collapsed"
                type="button"
                data-toggle="collapse"
                data-target=".page-header__collapse"
                aria-expanded="false">
            <i class="hamburger__icon"></i>
        </button>
        <div class="page-header__collapse collapse navbar-collapse">
            <ul class="navbar-nav mr-auto d-md-none d-lg-block">
                <li class="nav-item">
                    <a class="nav-link"
                       href="contacts.html"><%= lang.contacts %></a>
                </li>
            </ul>
            <ul class="navbar-nav mr-md-4 ml-md-auto">
                <li class="nav-item d-none d-md-flex align-items-center">
                    <a class="page-header__favorites-link icon icon__heart icon_size_32 mr-4"
                       href="favorites.html">99</a>
                </li>
                <li class="page-header__language-nav-item nav-item dropdown">
                    <a class="nav-link dropdown-toggle"
                       href="#"
                       id="cabinetMenuDropdown"
                       role="button"
                       data-toggle="dropdown"
                       aria-haspopup="true"
                       aria-expanded="false">
                        <%= lang.language %>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg"
                         aria-labelledby="cabinetMenuDropdown">
                        <% for(var i = 0;i < lang.languages.length;i++) { %>
                        <a class="dropdown-item"
                           href="?lang=<%= lang.languages[i].code %>"><%= lang.languages[i].name %></a>
                        <% } %>
                    </div>
                </li>
            </ul>
            <!-- Hide if user authorized -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link"
                       href="#"
                       data-toggle="modal"
                       data-target=".authorization-modal"><%= lang.sign_in %></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link"
                       href="#"
                       data-toggle="modal"
                       data-target=".registration-modal"><%= lang.sign_up %></a>
                </li>
            </ul>
            <!-- /Hide if user authorized -->
            <ul class="navbar-nav">
                <li class="page-header__cabinet-menu-dropdown nav-item dropdown">
                    <a class="nav-link dropdown-toggle"
                       href="#"
                       id="cabinetMenuDropdown"
                       role="button"
                       data-toggle="dropdown"
                       aria-haspopup="true"
                       aria-expanded="false">
                        <i class="page-header__cabinet-menu-icon icon icon__cabinet-user"></i>
                        <%= lang.cabinet_title %>
                    </a>
                    <div class="page-header__dropdown-menu dropdown-menu dropdown-menu-lg"
                         aria-labelledby="cabinetMenuDropdown">
                        <a class="dropdown-item"
                           href="realties.html"><%= lang.cabinet.realties %></a>
                        <a class="dropdown-item"
                           href="bookings.html"><%= lang.cabinet.bookings %></a>
                        <a class="dropdown-item"
                           href="trips.html"><%= lang.cabinet.trips %> <span class="badge badge-primary">5</span></a>
                        <a class="dropdown-item"
                           href="profile.html"><%= lang.cabinet.profile %></a>
                        <a class="dropdown-item"
                           href="transfers.html"><%= lang.cabinet.transfers %></a>
                        <a class="dropdown-item"
                           href="balance.html"><%= lang.cabinet.balance %></a>
                        <a class="dropdown-item"
                           href="partnership.html"><%= lang.cabinet.partnership %></a>
                        <a class="dropdown-item"
                           href="reviews.html"><%= lang.cabinet.reviews %></a>
                        <a class="dropdown-item"
                           href="referral-bookings.html"><%= lang.cabinet.referral_bookings %></a>
                        <a class="dropdown-item page-header__dropdown-item-logout"
                           href="logout.html"><%= lang.cabinet.logout %></a>
                    </div>
                </li>
            </ul>
            <div class="page-header__action-container">
                <a class="page-header__to-rent-button btn btn-outline-secondary btn-lg w-100"
                   href="add.html"><%= lang.to_rent %></a>
            </div>
        </div>
    </nav>
</header>
<!-- /Common: page-header -->

<%- include('../password-recovery-modal/password-recovery-modal.tpl'); %>
<%- include('../authorization-modal/authorization-modal.tpl'); %>
<%- include('../registration-modal/registration-modal.tpl'); %>