<!-- Page header -->
<header class="page-header">
    <nav class="navbar navbar-expand-md navbar-light container">
        <a class="page-header__logo mr-md-4" href="/"></a>
        <a class="page-header__favorites-link icon icon__heart icon_size_32 ml-auto mr-4 d-md-none"
           href="/favorites.html"
           aria-label="Favorites">99</a>
        <button class="navbar-toggler"
                type="button"
                data-toggle="collapse"
                data-target=".page-header__collapse"
                aria-expanded="false"
                aria-label="Toggle navigation">
            <i class="navbar-toggler-icon"></i>
        </button>
        <div class="page-header__collapse collapse navbar-collapse">
            <ul class="navbar-nav mr-auto d-md-none d-lg-block">
                <li class="nav-item">
                    <a class="nav-link" href="/contacts/">Контакты</a>
                </li>
            </ul>
            <ul class="navbar-nav mr-md-4 ml-md-auto">
                <li class="nav-item d-none d-md-flex align-items-center">
                    <a class="page-header__favorites-link icon icon__heart icon_size_32 mr-4"
                       href="/favorites.html"
                       aria-label="Favorites">99</a>
                </li>
                <li class="page-header__language-nav-item nav-item dropdown">
                    <a class="nav-link dropdown-toggle"
                       href="#"
                       id="cabinetMenuDropdown"
                       role="button"
                       data-toggle="dropdown"
                       aria-haspopup="true"
                       aria-expanded="false">
                        RU
                    </a>
                    <div class="dropdown-menu"
                         aria-labelledby="cabinetMenuDropdown">
                        <a class="dropdown-item" href="?lang=ru">Русский</a>
                        <a class="dropdown-item" href="?lang=en">Английский</a>
                        <a class="dropdown-item" href="?lang=ua">Украинский</a>
                    </div>
                </li>
            </ul>
            <!-- Hide if user authorized -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="#"
                       data-toggle="modal"
                       data-target=".authorization-modal">Вход</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"
                       data-toggle="modal"
                       data-target=".registration-modal">Регистрация</a>
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
            <div class="ml-md-4 my-2 my-md-0">
                <a class="page-header__to-rent-button btn btn-outline-secondary btn-lg w-100" href="add.html">Сдать в аренду</a>
            </div>
        </div>
    </nav>
</header>
<!-- /Page header -->

<%- include('../password-recovery-modal/password-recovery-modal.tpl'); %>
<%- include('../authorization-modal/authorization-modal.tpl'); %>
<%- include('../registration-modal/registration-modal.tpl'); %>