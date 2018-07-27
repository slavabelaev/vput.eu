<% var lang = JSON.parse(include('how-it-works_lang_ru.json')); %>

<!-- Section: how-it-works -->
<section class="how-it-works">
    <div class="how-it-works__container">
        <h2 class="how-it-works__title"><%= lang.title %></h2>
        <a href="#"
           class="how-it-works__icon-play my-2 my-md-4"
           data-toggle="modal"
           data-target=".how-it-works__modal"></a>
        <div class="how-it-works__description lead"><%= lang.description %></div>
    </div>

    <div class="how-it-works__modal modal fade"
         tabindex="-1"
         role="dialog"
         aria-hidden="true">
        <div class="modal-dialog modal-lg"
             role="document">
            <div class="modal-content">
                <iframe id="youtube_player"
                        data-src="https://www.youtube.com/embed/LLydhsmwSUs"
                        allowfullscreen=""
                        frameborder="0"
                        width="100%"
                        height="450px"
                        src="https://www.youtube.com/embed/LLydhsmwSUs"></iframe>
            </div>
        </div>
    </div>
</section>
<!-- /Section: how-it-works -->