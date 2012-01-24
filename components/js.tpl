{% if site.search.enabled %}
    <script type="text/javascript" src="http://static.edicy.com/assets/site_search/3.0/site_search.js?1"></script>
    <script type="text/javascript">
        var edys_site_search_options = {
            texts: { noresults: "{{ "search_noresults"|lc }}" },
            default_stylesheet_enabled: false,
}
</script>
{% endif %}
{% unless editmode %}{{site.analytics}}{% endunless %}