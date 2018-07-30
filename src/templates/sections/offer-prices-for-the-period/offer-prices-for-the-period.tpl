<% var lang = JSON.parse(include('offer-prices-for-the-period_lang_ru.json')); %>

<!-- Section: offer-prices-for-the-period -->
<section class="offer-prices-for-the-period">
    <h2 class="offer-prices-for-the-period__title mb-3"><%= lang.title %></h2>
    <table class="table table-bordered text-center">
        <thead>
        <tr>
            <th scope="col"><%= lang.period %></th>
            <th scope="col"><%= lang.price_per_night %></th>
        </tr>
        </thead>
        <tbody class="text-muted">
        <tr>
            <td>1 января - 31 декабря</td>
            <td>€25</td>
        </tr>
        </tbody>
    </table>
</section>
<!-- /Section: offer-prices-for-the-period -->