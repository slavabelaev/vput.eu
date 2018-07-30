<% var lang = JSON.parse(include('pagination_lang_ru.json')); %>

<!-- Block: pagination -->
<ul class="pagination">
    <li class="page-item"><a class="page-link" href="#"><%= lang.previous %></a></li>
    <li class="page-item active"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item"><a class="page-link" href="#"><%= lang.next %></a></li>
</ul>
<!-- /Block: pagination -->