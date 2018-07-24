<% var lang = JSON.parse(include('page-footer_lang_ru.json')); %>

<!-- Common: page-footer -->
<footer class="page-footer">
    <div class="page-footer__subscribe bg-light">
        <div class="container">
            <div class="row align-items-center">
                <div class="col mb-2 mb-md-0"><%= lang.subscribe_message %></div>
                <div class="col-md-auto d-flex justify-content-center justify-content-lg-end">
                    <%- include('../../forms/form-subscribe/form-subscribe.tpl'); %>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <ul class="page-footer__list-of-navs row">
            <li class="col-sm-6 col-md-3 mb-4">
                <h3 class="page-footer__title"><%= lang.who_we_are %></h3>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a href="about-ru.html"
                           class="page-footer__link"><%= lang.about %></a>
                    </li>
                    <li class="nav-item">
                        <a href="trust-ru.html"
                           class="page-footer__link"><%= lang.trust %></a>
                    </li>
                </ul>
            </li>
            <li class="col-sm-6 col-md-3 mb-4">
                <h3 class="page-footer__title"><%= lang.how_it_works %></h3>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a href="user-agreement-ru.html"
                           class="page-footer__link"><%= lang.user_agreements %></a>
                    </li>
                    <li class="nav-item">
                        <a href="booking-cancelation-rules-ru.html"
                           class="page-footer__link"><%= lang.cancellation_policies %></a>
                    </li>
                    <li class="nav-item">
                        <a href="withdraw-ru.html"
                           class="page-footer__link"><%= lang.withdraw %></a>
                    </li>
                </ul>
            </li>
            <li class="col-sm-6 col-md-3 mb-4">
                <h3 class="page-footer__title"><%= lang.contact_us %></h3>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a href="contacts-ru.html"
                           class="page-footer__link"><%= lang.contacts %></a>
                    </li>
                </ul>
            </li>
            <li class="col-sm-6 col-md-3 mb-4">
                <h3 class="page-footer__title"><%= lang.follow_us %></h3>
                <ul class="page-footer__social-list">
                    <li class="page-footer__social-item">
                        <a target="_blank"
                           href="http://ok.ru/group/53570038661351/"
                           class="page-footer__social-icon page-footer__social-icon_type_ok"></a>
                    </li>
                    <li class="page-footer__social-item">
                        <a target="_blank"
                           href="https://vk.com/vput_eu"
                           class="page-footer__social-icon page-footer__social-icon_type_vk"></a>
                    </li>
                    <li class="page-footer__social-item">
                        <a target="_blank"
                           href="https://www.facebook.com/groups/vput.eu/"
                           class="page-footer__social-icon page-footer__social-icon_type_facebook"></a>
                    </li>
                    <li class="page-footer__social-item">
                        <a target="_blank"
                           href="https://www.instagram.com/v.p.u.t.bulgaria/"
                           class="page-footer__social-icon page-footer__social-icon_type_instagram"></a>
                    </li>
                </ul>
            </li>
        </ul>
        <div class="page-footer__info">
            <figure class="page-footer__logo"></figure>
            <div class="page-footer__copyright"><%= lang.copyright %> 2013 - 2018</div>
            <hr class="page-footer__delimiter">
            <div class="page-footer__developer"><%= lang.developed_by %>
                <a target="_blank"
                   href="https://webdelo.org/"
                   class="page-footer__developed-by"></a>
            </div>
        </div>
    </div>
</footer>
<!-- /Common: page-footer -->