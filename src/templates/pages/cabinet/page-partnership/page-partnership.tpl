<% //var lang = JSON.parse(include('page-partnership_lang_ru.json')); %>

<%- include('../../../common.blocks/meta-header/meta-header.tpl'); %>
<div class="navbar-dark-md">
    <%- include('../../../common.blocks/page-header/page-header.tpl'); %>
</div>

<!-- Page: page-partnership -->
<link rel="stylesheet" href="assets/pages/cabinet/page-partnership.css">
<script src="assets/pages/cabinet/page-partnership.js" defer></script>

<main class="page-partnership">
    <header class="page-cabinet__header py-4">
        <div class="container">
            <h1 class="page-cabinet__title mb-0">Партнёрская программа</h1>
        </div>
    </header>
    <div class="container py-4">
        <div class="row">
            <div class="col-xl-3 d-none d-xl-block">
                <aside class="page-bookings__aside">
                    <%- include('../../../common.blocks/cabinet-navigation/cabinet-navigation.tpl'); %>
                </aside>
            </div>
            <div class="col-xl-9">
                <div class="card mb-4">
                    <header class="card-header">Ваша партнёрская ссылка</header>
                    <div class="card-body bg-gray-50">
                        <div class="row">
                            <div class="col">
                                <div class="form-group mb-0">
                                    <input type="text"
                                           readonly
                                           value="https://vput.ru/?bonus=309"
                                           class="form-control form-control-lg">
                                </div>
                            </div>
                            <div class="col-auto">
                                <button class="btn btn-info btn-lg">Копировать в буфер</button>
                            </div>
                        </div>
                    </div>
                </div>

                <ul class="nav nav-pills" id="myTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Бонусы</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Рефераллы</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Траффик</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Настройки</a>
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">...</div>
                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">...</div>
                    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">...</div>
                </div>

            </div>
        </div>
    </div>
</main>
<!-- /Page: page-partnership -->

<%- include('../../../common.blocks/page-footer/page-footer.tpl'); %>
<%- include('../../../common.blocks/meta-footer/meta-footer.tpl'); %>