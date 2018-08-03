<% var lang = JSON.parse(include('ask-for-help_lang_ru.json')); %>

<!-- Ask for help -->
<figure class="ask-for-help card card-body bg-light flex-lg-row align-items-center">
    <img src="templates/common.blocks/ask-for-help/ask-for-help__support.svg"
         alt="Support"
         class="ask-for-help__image mb-4 mb-lg-0 mr-lg-4">
    <figcaption class="ask-for-help__caption mb-4 mb-lg-0 mr-lg-4">
        <h3 class="mt-0"><%= lang.title %></h3>
        <p><%= lang.description %></p>
        <p class="lead text-secondary mb-0"><%= lang.small_description %></p>
    </figcaption>
    <footer class="ask-for-help__footer">
        <a href="support.html"
           class="btn btn-primary btn-lg"><%= lang.button_text %></a>
    </footer>
</figure>
<!-- /Ask for help -->