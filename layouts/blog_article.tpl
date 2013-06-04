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
        <div class="date">
          <div class="month">{{article.created_at | format_date:"%b"}}</div>
          <div class="day">{{article.created_at | format_date:"%d"}}</div>
        </div>
        <h2 class="article">{% editable article.title %}<span class="author">{{article.author.name}}</span><span class="article-date">{{article.created_at | format_date:"short"}}</span></h2>
        {% include "Langmenu" %} </div>
    </div>
  </div>
  {% include "Menu" %}
  <div id="content-wrap" class="clear">
    <div class="content">
      <div class="excerpt">{% editable article.excerpt %}</div>
      {% editable article.body %}
      
      {% if editmode %}
            <div class="cfx article-tags">
                <div class="article-tag-icon"></div>
                {% editable article.tags %}
            </div>
          {% else %}
            {% unless article.tags == empty %}
                <div class="cfx article-tags">
                    <div class="article-tag-icon"></div>
                    {% for tag in article.tags %}
                        <a href="{{ article.page.url }}/tagged/{{ tag.path }}">{{ tag.name }}</a>{% unless forloop.last %}, {% endunless %}
                    {% endfor %}
                </div>
            {% endunless %}
        {% endif %}

      <div id="comments">
        <h2>{% case article.comments_count %}{% when 0 %}{{"no_comments"|lc}}{% else %}{{"comments_for_count"|lc}}: <span class="edy-site-blog-comments-count">{{ article.comments_count }}</span>
{% endcase %}</h2>
        <ul>
          {% for comment in article.comments %}
          <li class="edy-site-blog-comment"> <strong class="comment-author">{{comment.author}}<span class="comment-date">{{comment.created_at | format_date:"short"}}</span></strong>{% removebutton %}
            <p>{{comment.body_html}}</p>
          </li>
          {% endfor %}
        </ul>
      </div>
      <!-- //comments -->
      <div id="comment-form">
        <h2>{{"add_a_comment"|lc}}</h2>
        {% commentform %}
        {% unless comment.valid? %}
        <ul>
          {% for error in comment.errors %}
          <li>{{ error | lc }}</li>
          {% endfor %}
        </ul>
        {% endunless %}
        <div class="form_field">
          <label for="commentform-name">{{"name"|lc}}</label>
          <input type="text" class="form_field_textfield" id="commentform-name" value="{{comment.author}}" name="comment[author]" />
        </div>
        <div class="form_field">
          <label for="commentform-email">{{"email"|lc}}</label>
          <input type="text" class="form_field_textfield" id="commentform-email" value="{{comment.author_email}}" name="comment[author_email]" />
        </div>
        <div class="form_field">
          <label for="commentform-body">{{"comment"|lc}}</label>
          <textarea id="commentform-body" class="form_field_textarea" rows="4" cols="5" name="comment[body]">{{comment.body}}</textarea>
        </div>
        <div class="form_submit">
          <input type="submit" class="submit" value="{{"submit"|lc}}" />
        </div>
        {% endcommentform %} </div>
      <!-- //comment-form -->
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