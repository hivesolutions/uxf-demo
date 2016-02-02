<section id="select-field">
    <h1 class="line">Select Field</h1>
    <div class="section-contents">

        <p>To have a <span class="highlight">&lt;select&gt;</span> element that consumes a data source use this component.</p>

        <div class="box box-white">
            <div class="select-field" data-value="name">
                <select class="text-field"></select>
                <ul class="data-source" data-type="local">
                    <li><span name="name">User 1</span></li>
                    <li><span name="name">User 2</span></li>
                    <li><span name="name">User 3</span></li>
                </ul>
            </div>
        </div>

<pre class="code language-markup">
&lt;div class=&quot;select-field&quot; data-value=&quot;name&quot;&gt;
    &lt;select class=&quot;text-field&quot;&gt;&lt;/select&gt;
    &lt;ul class=&quot;data-source&quot; data-type=&quot;local&quot;&gt;
        &lt;li&gt;&lt;span name=&quot;name&quot;&gt;User 1&lt;/span&gt;&lt;/li&gt;
        &lt;li&gt;&lt;span name=&quot;name&quot;&gt;User 2&lt;/span&gt;&lt;/li&gt;
        &lt;li&gt;&lt;span name=&quot;name&quot;&gt;User 3&lt;/span&gt;&lt;/li&gt;
    &lt;/ul&gt;
&lt;/div&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-value</span></td>
                <td><span class="highlight">string</span></td>
                <td>The name of the value to be retrieved from the item.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-display</span></td>
                <td><span class="highlight">string</span></td>
                <td>The name of the item's attribute to display to the user. If not set is equal to <span class="highlight">data-value</span></td>
            </tr>
        </table>

    </div>
</section>
