<section id="data-source">
    <h1  class="line">Data Source</h1>
    <div class="section-contents">
        <p>
            This is the basic structure for providing information for the various element including
            <a href="#drop-field">drop field</a> and <a href="#filter">filter</a>.
        </p>

<pre class="code language-markup">
&lt;ul class=&quot;data-source&quot; data-type=&quot;countries&quot;&gt;&lt;/ul&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-type</span></td>
                <td><span class="highlight">string</span></td>
                <td>The type of the data source to be used (eg: local, json, countries, etc.).</td>
            </tr>
            <tr>
                <td><span class="highlight">data-url</span></td>
                <td><span class="highlight">string</span></td>
                <td>For remote based data sources this field contains the url to gather data.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-insensitive</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>In case the current data source is local this is make the search case insensitive.</td>
            </tr>
        </table>
    </div>
</section>
