{% extends "partials/layout.html.tpl" %}
{% block content %}
    {% include "parts/bar.html.tpl" %}
    {% include "parts/search.html.tpl" %}
    {% include "parts/window.html.tpl" %}

    <div class="container container-960 shortcuts">
        {% include "ui/overview.html.tpl" %}
        {% include "ui/base.html.tpl" %}
        {% include "ui/style.html.tpl" %}
        {% include "ui/drop_field.html.tpl" %}
        {% include "ui/filter.html.tpl" %}
        {% include "ui/data_source.html.tpl" %}
        {% include "ui/buttons.html.tpl" %}
        {% include "ui/form.html.tpl" %}
        {% include "ui/progress_bar.html.tpl" %}
        {% include "ui/table.html.tpl" %}
        {% include "ui/notification.html.tpl" %}
        {% include "ui/replacer.html.tpl" %}
        {% include "ui/changer.html.tpl" %}
        {% include "ui/link.html.tpl" %}
        {% include "ui/link_confirm.html.tpl" %}
        {% include "ui/windows.html.tpl" %}
        {% include "ui/key.html.tpl" %}
        {% include "ui/transform_flip.html.tpl" %}
        {% include "ui/timestamp.html.tpl" %}
        {% include "ui/enumerations.html.tpl" %}
        {% include "ui/number_formatter.html.tpl" %}
        {% include "ui/password_meter.html.tpl" %}
        {% include "ui/tags.html.tpl" %}
        {% include "ui/tabs.html.tpl" %}
        {% include "ui/wizard.html.tpl" %}
        {% include "ui/video.html.tpl" %}
    </div>
{% endblock %}
