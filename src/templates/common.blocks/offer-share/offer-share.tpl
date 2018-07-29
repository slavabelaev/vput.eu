<% var lang = JSON.parse(include('offer-share_lang_ru.json')); %>

<!-- Common: offer-share -->
<div class="offer-share">
    <a href="#"
       class="offer-share__add-to-favorites mb-3 btn"
       data-toggle="button"
       aria-pressed="false"
       autocomplete="off">
        <i class="icon icon__heart mr-2"></i>
        <span class="offer-share__add-to-favorites-label-plus"><%= lang.add_to_favorites %></span>
        <span class="offer-share__add-to-favorites-label-minus"><%= lang.remove_from_favorites %></span>
    </a>
    <section class="offer-share__socials-share">
        <h3 class="offer-share__title mb-3">
            <span class="offer-share__title-text"><%= lang.share %></span>
        </h3>
        <ul class="offer-share__social-list">
            <li class="offer-share__social-list-item">
                <a href="http://www.facebook.com/sharer.php?m2w&u="
                   target="_blank"
                   title="<%= lang.share_in_facebook %>"
                   class="offer-share__social-link icon icon__social-facebook icon_size_32"></a>
            </li>
            <li class="offer-share__social-list-item">
                <a href="http://www.odnoklassniki.ru/dk?st.cmd=addShare&st._surl=&title="
                   target="_blank"
                   title="<%= lang.share_in_ok %>"
                   class="offer-share__social-link icon icon__social-ok icon_size_32"></a>
            </li>
            <li class="offer-share__social-list-item">
                <a href="http://vk.com/share.php?url=&title=&description="
                   target="_blank"
                   title="<%= lang.share_in_vk %>"
                   class="offer-share__social-link icon icon__social-vk icon_size_32"></a>
            </li>
            <li class="offer-share__social-list-item">
                <a href="https://twitter.com/intent/tweet?text=&url="
                   target="_blank"
                   title="<%= lang.share_in_twitter %>"
                   class="offer-share__social-link icon icon__social-twitter icon_size_32"></a>
            </li>
        </ul>
    </section>
</div>
<!-- /Common: offer-share -->