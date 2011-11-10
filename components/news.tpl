{% for a in site.latest_1_articles %}
<h2>{{"latest_news"|lc}}</h2>
<ul class="latest-news">
{% for article in site.latest_4_articles %}
	<li>
  <a href="{{article.url}}">{{article.title}}</a> <span>{{article.created_at | format_date:"short"}}</span>
	</li>{% endfor %}
</ul>
{% endfor %}

