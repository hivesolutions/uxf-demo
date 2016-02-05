<section id="replacer-sec">
    <h1 class="line">Replacer</h1>
    <div class="section-contents">

        <div class="box box-white">
            <a class="link link-blue replacer" data-target="#replacer-target" data-no_auto="1">Replace</a>
            <span id="replacer-target" class="replacer-target">Replaced</span>
        </div>

<pre class="code language-markup">
&lt;div class=&quot;button replacer&quot; data-target=&quot;#replacer-target&quot; data-no_auto=&quot;1&quot;&gt;Replace&lt;/div&gt;
&lt;div id=&quot;replacer-target&quot; class=&quot;replacer-target&quot;&gt;Replaced&lt;/div&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-target</span></td>
                <td><span class="highlight">string</span></td>
                <td>Selector string for the target element to be shown.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-no_auto</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>Prevents the auto replacement from occuring when the replacer target contains a initial value.</td>
            </tr>
        </table>

    </div>
</section>
