<% var lang = JSON.parse(include('feedback_lang_ru.json')); %>

<!-- Section: feedback -->
<section class="feedback card text-white bg-primary">
    <h2 class="card-header bg-primary"><%= lang.title %></h2>
    <div class="card-body">
        <div class="row">
            <div class="col-lg-6">
                <div class="lead">
                    <%- lang.description %>
                </div>
            </div>
            <div class="col-lg-6">
                <%- include('../../forms/form-feedback/form-feedback.tpl'); %>
            </div>
        </div>
    </div>
</section>
<!-- /Section: feedback -->