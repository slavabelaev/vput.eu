<!-- Page header -->
<% var $style = $style ? $style : 'light'; %>
<header class="page-header">
    <nav class="navbar navbar-expand-md navbar-<%= $style %> container">
        <a class="page-header__logo mr-md-4" href="/"></a>
        <button class="navbar-toggler"
                type="button"
                data-toggle="collapse"
                data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/contacts/">Контакты</a>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto align-items-center">
                <li class="nav-item col-6 col-md-auto mr-md-2">
                    <a class="page-header__favorites-link  icon icon__heart" href="/favorites/">99</a>
                </li>
                <li class="page-header__language-nav-item nav-item dropdown mb-2 mb-md-0">
                    <a class="nav-link dropdown-toggle"
                       href="#"
                       id="cabinetMenuDropdown"
                       role="button"
                       data-toggle="dropdown"
                       aria-haspopup="true"
                       aria-expanded="false">
                        Язык
                    </a>
                    <div class="dropdown-menu"
                         aria-labelledby="cabinetMenuDropdown">
                        <a class="dropdown-item" href="?lang=ru">Русский</a>
                        <a class="dropdown-item" href="?lang=en">Английский</a>
                        <a class="dropdown-item" href="?lang=ua">Украинский</a>
                    </div>
                </li>
                <li class="nav-item col-6 col-md-auto">
                    <a class="nav-link" href="#"
                       data-toggle="modal"
                       data-target=".authorization-modal">Вход</a>
                </li>
                <li class="nav-item col-6 col-md-auto">
                    <a class="nav-link" href="#"
                       data-toggle="modal"
                       data-target=".registration-modal">Регистрация</a>
                </li>
                <li class="page-header__cabinet-menu-dropdown nav-item dropdown mb-2 mb-md-0">
                    <a class="nav-link dropdown-toggle"
                       href="#"
                       id="cabinetMenuDropdown"
                       role="button"
                       data-toggle="dropdown"
                       aria-haspopup="true"
                       aria-expanded="false">
                        <span class="page-header__cabinet-menu-icon"></span>
                        Кабинет
                    </a>
                    <div class="page-header__dropdown-menu dropdown-menu" aria-labelledby="cabinetMenuDropdown">
                        <a class="dropdown-item" href="/cabinet/realties/">Мои объявления</a>
                        <a class="dropdown-item" href="/cabinet/bookings/">Бронирования</a>
                        <a class="dropdown-item" href="/cabinet/trips/">Мои поездки <span class="badge badge-primary">5</span></a>
                        <a class="dropdown-item" href="/cabinet/profile/">Профиль</a>
                        <a class="dropdown-item" href="/cabinet/balance/">Трансферы</a>
                        <a class="dropdown-item" href="/cabinet/balance/">Баланс</a>
                        <a class="dropdown-item" href="/cabinet/partnership/">Партнерская программа</a>
                        <a class="dropdown-item" href="/cabinet/reviews/">Отзывы</a>
                        <a class="dropdown-item" href="/cabinet/referralBookings/">Бронирования рефералов</a>
                        <a class="dropdown-item page-header__dropdown-item-exit" href="/authorization/logout/">Выйти</a>
                    </div>
                </li>
            </ul>
            <div class="ml-md-4 col-xl-2 col-lg-3 col-md-4">
                <a class="page-header__to-rent-button btn btn-outline-secondary btn-lg" href="/add/">Сдать в аренду</a>
            </div>
        </div>
    </nav>
</header>
<!-- /Page header -->

<%- include('../password-recovery-modal/password-recovery-modal.tpl'); %>
<%- include('../authorization-modal/authorization-modal.tpl'); %>
<%- include('../registration-modal/registration-modal.tpl'); %>