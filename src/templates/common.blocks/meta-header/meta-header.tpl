<% var lang = JSON.parse(include('meta-header_lang_ru.json')); %>

<!-- Common: meta-header -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description"
          content="<%= lang.meta_description %>" />
    <meta name="keywords"
          content="<%= lang.meta_keywords %>" />
    <meta property="og:title"
          content="<%= lang.meta_og_title %>">
    <meta property="og:locale"
          content="<%= lang.meta_og_locale %>">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title><%= lang.title %></title>

    <link rel="apple-touch-icon"
          sizes="57x57"
          href="/images/touch_icons/apple-touch-icon-57.png" />
    <link rel="apple-touch-icon"
          sizes="72x72"
          href="/images/touch_icons/apple-touch-icon-72.png" />
    <link rel="apple-touch-icon"
          sizes="114x114"
          href="/images/touch_icons/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon"
          sizes="144x144"
          href="/images/touch_icons/apple-touch-icon-144.png" />

    <link href="/templates/favicon/favicon.ico"
          rel="shortcut icon"
          type="image/x-icon" />

    <link href="//fonts.googleapis.com/css?family=Exo+2:700,300italic,600,500italic,700italic,300,400,800,600italic,500,800italic,400italic"
          rel="stylesheet"
          type="text/css">
    <link rel="stylesheet"
          href="<%= bundlePath.styles.replace('bundle.min', 'scss.bundle.min') %>">
    <link rel="stylesheet"
          href="<%= bundlePath.styles.replace('bundle.min', 'css.bundle.min') %>">
</head>

<body>
<div class="page-preloader preloader"></div>
<div id="app">
<!-- /Common: meta-header -->