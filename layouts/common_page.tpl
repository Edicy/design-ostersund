<!DOCTYPE html>
<html lang="{{ page.language_code }}">
<head>
{% include "SiteHeader" %}
</head>
<body>
<div id="wrap">
  <div id="header">
    <div id="header-inner" class="clear">
      <div class="wrapper">
        <h1 id="logo">{% editable site.header %}</h1>
        {% include "Search" %} </div>
      <!-- //wrapper -->
    </div>
    <!-- //header-inner -->
  </div>
  <!-- //header -->
  {% include "Mainmenu" %}
  <!-- //nav -->
  <div id="top-bar" class="clear">
    <div id="top-inner" class="clear">
      <div class="wrapper">
        <h2>{% content name="heading" %}</h2>
        {% include "Langmenu" %} </div>
    </div>
  </div>
  {% include "Menu" %}
  <div id="content-wrap" class="clear">
    <div class="content content-hyphenate" data-search-indexing-allowed="true"> {% content %} </div>
    <div id="sidebar">
      <div class="inner"> {% include "Submenu" %}
        
        {% include "News" %} </div>
    </div>
  </div>
  {% include "Footer" %} </div>
<!-- //wrap -->
{% include "JS" %}
</body>
</html>