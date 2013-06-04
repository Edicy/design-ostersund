<!DOCTYPE html>
<html lang="{{ page.language_code }}">
<head>
{% include "SiteHeader" %}
{{blog.rss_link}}
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
    <div class="content">
         {% if tags %}
            <div class="tagged-list-header">
                <div class="header-tag-icon"></div>
                {% if tags == empty %}
                    {{ "no_posts_tagged" | lc }}
                {% else %}
                    {{ "posts_tagged" | lc }} '{{ tags | sort:"name" | map:"name" | join:"', '"}}'.
                {% endif %}
            </div>
        {% endif %}
    
    
      <ul id="blog-list">
        {% addbutton class="add-article" %}
        
        {% for article in articles %}
        <li>
          <div class="article-top clear">
            <div class="date">
              <div class="month">{{article.created_at | format_date:"%b"}}</div>
              <div class="day">{{article.created_at | format_date:"%d"}}</div>
            </div>
            <div class="right-heading">
              <h2><a href="{{article.url}}">{{article.title}}</a><span class="author">{{article.author.name}}</span></h2>
              <p class="postmetadata"><a href="{% case article.comments_count %}{% when 0 %}{{article.url}}#comment-form{% else %}{{article.url}}#comments{% endcase %}">{% case article.comments_count %}{% when 0 %}{{"write_first_comment" | lc}}{% else %}{{"comments" | lc}} ({{article.comments_count}}){% endcase %}</a></p>
            </div>
          </div>
          {{article.excerpt}} </li>
        {% endfor %}
      </ul>
    </div>
    <div id="sidebar">
      <div class="inner"> {% include "Submenu" %}
        {% include "News" %}
        <p class="rss"><a href="{{ blog.rss_url }}">Rss</a></p>
      </div>
    </div>
  </div>
  {% include "Footer" %}
  <!-- //footer -->
</div>
<!-- //wrap -->
{% include "JS" %}
</body>
</html>