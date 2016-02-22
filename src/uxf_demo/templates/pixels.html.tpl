{% extends "partials/layout.html.tpl" %}
{% block content %}
    {% include "parts/bar.html.tpl" %}
    {% include "parts/search.html.tpl" %}
    {% include "parts/side_panel.html.tpl" %}
    {% include "parts/slider.html.tpl" %}
    {% include "parts/window.html.tpl" %}

    <div class="container container-960 shortcuts side-menu-movable">
        {% include "ui/pixels.html.tpl" %}
    </div>
{% endblock %}
