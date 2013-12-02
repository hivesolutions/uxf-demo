{% extends "partials/layout.html.tpl" %}
{% block content %}

    {% include "parts/bar.html.tpl" %}
    {% include "parts/search.html.tpl" %}
    {% include "parts/window.html.tpl" %}

    <div class="container-960 shortcuts">
        <section id="overview">
        </section>

        {% include "ui/style.html.tpl" %}
        {% include "ui/drop_field.html.tpl" %}
        {% include "ui/buttons.html.tpl" %}
        {% include "ui/buttons.html.tpl" %}
        {% include "ui/form.html.tpl" %}
        {% include "ui/progress_bar.html.tpl" %}
        {% include "ui/table.html.tpl" %}
        {% include "ui/replacer.html.tpl" %}
        {% include "ui/link_confirm.html.tpl" %}
        {% include "ui/key.html.tpl" %}







        <!-- transform flip -->
        <section id="transform-flip">
            <h1 class="line">Transform Flip <span class="sub-title">3d is cool</span></h1>

            <div class="box">
                <div class="transform-flip">Click to Transform Me!</div>
            </div>
        </section>

        <!-- timestamp -->
        <section id="timestamp">
            <h1 class="line">Timestamp <span class="sub-title">dates the easy way</span></h1>

            <p>When communicating between the client side and the server side it's important
            to remaining dependent on the client's local data. The best way to do it is transferring
            a utc timestmap representing the specified time and then converting it to local data using
            the timestamp component.</p>

            <div class="box">
                <div class="timestamp">1317118297</div>
            </div>

<pre class="prettyprint linenums">
&lt;div class=&quot;timestamp&quot;&gt;1317118297&lt;/div&gt;
</pre>
        </section>

            <table>
                <tr>
                    <td><span class="highlight">data-format</span></td>
                    <td><span class="highlight">string</span></td>
                    <td>Format for the date to be displayed, the example containing the complete format set is:
                    <span class="highlight">%Y-%m-%d %H:%M:%S</span>.</td>
                </tr>
                <tr>
                    <td><span class="highlight">data-utc</span></td>
                    <td><span class="highlight">boolean</span></td>
                    <td>If the date should be shown in the <span class="highlight">UTC</span> timezone instead of the local
                    timezone..</td>
                </tr>
            </table>

        <!-- enumerations -->
        <section id="number-formatter">
            <h1 class="line">Enumeration <span class="sub-title">convert numbers to text</span></h1>

            <p>It's important to be able to convert a number base enumeration into a string that describes
            the value in the enumeration. For this a mapping mechanism is required, and that's exactly what this
            component archives the <span class="highlight">mapping function</span>.</p>

            <div class="box">
                <div class="enumeration" data-enum="['car', 'bike', 'bus']">2</div>
            </div>

<pre class="prettyprint linenums">
&lt;div class=&quot;enumeration&quot; data-enum=&quot;['car', 'bike', 'bus'']&quot;&gt;2&lt;/div&gt;
</pre>

            <table>
                <tr>
                    <td><span class="highlight">data-enum</span></td>
                    <td><span class="highlight">string</span></td>
                    <td>JSON string that contains the list of items for the enumeration. These values can assume any valid JSON data type.</td>
                </tr>
            </table>
        </section>

        <!-- number format -->
        <section id="number-formatter">
            <h1 class="line">Number Formatter <span class="sub-title">spread the number</span></h1>

            <p>Being able to format number in the client side is god dam important when you're
            building an enterprise grade information system. Using the number formatter is possible to control
            the number of decimal places the separator for the decimal part the maginute separtor.</p>

            <div class="box">
                <div class="number" data-places="2" data-separator="," data-magnitude_separator=".">12345.6</div>
            </div>

<pre class="prettyprint linenums">
&lt;div class=&quot;number&quot; data-places=&quot;2&quot; data-separator=&quot;,&quot; data-magnitude_separator=&quot;.&quot;&gt;12345.6&lt;/div&gt;
</pre>

            <table>
                <tr>
                    <td><span class="highlight">data-places</span></td>
                    <td><span class="highlight">integer</span></td>
                    <td>The number of decimal places to be used (fixed point number). The final value is rounded and not truncated.</td>
                </tr>
                <tr>
                    <td><span class="highlight">data-separator</span></td>
                    <td><span class="highlight">string</span></td>
                    <td>The separator to separate the decimal part from the integer part.</td>
                </tr>
                <tr>
                    <td><span class="highlight">magnitude-separator</span></td>
                    <td><span class="highlight">string</span></td>
                    <td>The separator to be used in magnitude order change.</td>
                </tr>
            </table>
        </section>

        <!-- password meter -->
        <section id="password-meter">
            <h1 class="line">Password Meter <span class="sub-title">for verified passwords</span></h1>

            <p>If a password field requires some king of verification for strength there's the password
            meter component for that. Just use the normal <span class="highlight">text-field</span> component and associate
            the password meter using the <span class="highlight">data-target</span> attribute.</p>

            <!-- password meter -->
            <div class="box box-white">
                <input id="password" type="password" class="text-field field-margin" name="" value="" />
                <div class="password-meter" data-target="#password"></div>
            </div>

<pre class="prettyprint linenums">
&lt;input id=&quot;password&quot; type=&quot;password&quot; class=&quot;text-field&quot; /&gt;
&lt;div class=&quot;password-meter&quot; data-target=&quot;#password&quot;&gt;&lt;/div&gt;
</pre>

            <table>
                <tr>
                    <td><span class="highlight">data-target</span></td>
                    <td><span class="highlight">string</span></td>
                    <td>Selector string for the target text-field.</td>
                </tr>
            </table>
        </section>

        <!-- tags -->
        <section id="tags">
            <h1 class="line">Tags <span class="sub-title">fancy stuff</span></h1>

            <p>Tags are probable the simplest way to archive a good looking ui. Just use
            <span class="tag">this</span> and <span class="tag success">that</span> and your're done.</p>

            <div class="box box-white">
                <span class="tag">Default</span>
                <span class="tag success">Success</span>
                <span class="tag warning">Warning</span>
                <span class="tag important">Important</span>
                <span class="tag notice">Notice</span>
            </div>

<pre class="prettyprint linenums">
&lt;span class=&quot;tag&quot;&gt;tag&lt;/span&gt;
</pre>
        </section>

        <!-- tabs -->
        <section id="tabs">
            <h1>Tabs</h1>

            <ul class="tabs">
                <li class="active"><a href="#">Home</a></li>
                <li><a class="link" href="#">Profile</a></li>
                <li><a class="link" href="#">Messages</a></li>
                <li><a class="link" href="#">Settings</a></li>
                <li><a class="link" href="#">Contact</a></li>
            </ul>
        </section>

        <!-- video -->
        <section id="video">
            <h1>Video</h1>

            <p>It's really nice to embedded videos in your existent html source base, the single
            most anoying problem is that for each video service provider there is a different iframe code.
            The video component provides a simple way to overcome ths problem just set the html code of it
            with the url of the video and that it. Currently supported services include: <span class="highlight">youtube</span>,
            <span class="highlight">vimeo</span> and <span class="highlight">dailymotion</span>.</p>
            <p>Additional configuration options are provided with <span class="highlight">data-width</span>,
            <span class="highlight">data-height</span>, ...</p>

            <div class="box box-white">
                <div class="video">http://www.youtube.com/watch?v=4XpnKHJAok8&feature=feedlik</div>
            </div>

<pre class="prettyprint linenums">
&lt;div class=&quot;video&quot;&gt;http://www.youtube.com/watch?v=5nt3gE9dGHQ&lt;/div&gt;
</pre>

            <table>
                <tr>
                    <td><span class="highlight">data-width</span></td>
                    <td><span class="highlight">integer</span></td>
                    <td>The width in pixels for the video.</td>
                </tr>
                <tr>
                    <td><span class="highlight">data-height</span></td>
                    <td><span class="highlight">integer</span></td>
                    <td>The height in pixels for the video.</td>
                </tr>
                <tr>
                    <td><span class="highlight">data-hd</span></td>
                    <td><span class="highlight">boolean</span></td>
                    <td>If the video should be shown in high definition (720p) by default.</td>
                </tr>
                <tr>
                    <td><span class="highlight">data-information</span></td>
                    <td><span class="highlight">boolean</span></td>
                    <td>If the video information (title, description, etc) should be displayed.</td>
                </tr>
                <tr>
                    <td><span class="highlight">data-chromeless</span></td>
                    <td><span class="highlight">boolean</span></td>
                    <td>If set the window chrome is not displayed.</td>
                </tr>
                <tr>
                    <td><span class="highlight">data-auto_play</span></td>
                    <td><span class="highlight">boolean</span></td>
                    <td>If the video should start playing when loaded.</td>
                </tr>
            </table>
        </section>
    </div>
{% endblock %}
