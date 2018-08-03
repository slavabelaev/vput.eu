<% var lang = JSON.parse(include('page-404_lang_ru.json')); %>

<%- include('../../../common.blocks/meta-header/meta-header.tpl'); %>

<link rel="stylesheet" href="assets/pages/site/page-404.css">

<main class="page-404">
    <a href="index.html">
        <img src="templates/pages/page-404/page-404__logo.svg"
             alt="V.P.U.T."
             class="page-404__logo">
    </a>
    <header class="page-404__header">
        <div class="page-404__header-container">
            <h1 class="page-404__title"><%= lang.title %></h1>
            <div class="page-404__description"><%= lang.description %></div>
            <a href="/search/"
               class="page-404__link btn btn-primary btn-lg"><%= lang.button_text %></a>
        </div>
    </header>

    <div class="page-404__island"
         style="background-image: url(templates/pages/page-404/page-404__island.svg)"></div>

    <div class="page-404__sea">
        <svg width="100%"
             height="100%"
             version="1.1"
             xmlns="http://www.w3.org/2000/svg"
             class="page-404__sea-wave">
            <title>Wave</title>
            <defs></defs>
            <path id="page-404__feel-the-wave" d=""/>
        </svg>

        <svg width="100%"
             height="100%"
             version="1.1"
             xmlns="http://www.w3.org/2000/svg"
             class="page-404__sea-wave">
            <title>Wave</title>
            <defs></defs>
            <path id="page-404__feel-the-wave-two" d=""/>
        </svg>
    </div>
</main>

<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/latest/TweenMax.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://rawgit.com/peacepostman/wavify/master/jquery.wavify.js"></script>
<script src="assets/pages/site/page-404.js"></script>

<%- include('../../../common.blocks/meta-footer/meta-footer.tpl'); %>