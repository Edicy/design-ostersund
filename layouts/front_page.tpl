<!DOCTYPE html>
<html lang="{{ page.language_code }}">
<head>
{% include "SiteHeader" %}
</head>
<body id="front">
<div id="wrap">
  <div id="header">
    <div id="header-inner" class="clear">
      <div class="wrapper">
        <h1 id="logo" class="content-hyphenate">{% editable site.header %}</h1>
        {% include "Search" %} </div>
      <!-- //wrapper -->
    </div>
    <!-- //header-inner -->
  </div>
  <!-- //header -->
  {% include "Mainmenu" %}
  <!-- //nav -->
  <div id="front-container">
    <div id="front-inner">
      <div class="wrapper clear">
        <div id="top-bar" class="clear">
          <h2>{% content name="slogan" %}</h2>
          {% include "Langmenu" %} </div>
        <div id="content-block" class="content-hyphenate" data-search-indexing-allowed="true">{% content %}</div>
        <!-- //content block -->
        <div id="sidebar"> {% include "News" %} </div>
        <!-- //sidebar -->
      </div>
      <!-- //wrapper -->
    </div>
    <!-- //front-inner -->
  </div>
  <!-- //front-container -->
  {% include "Footer" %} </div>
<!-- //wrap -->
{% include "JS" %}
</body>
</html>