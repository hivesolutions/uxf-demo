<section id="drop-list">
    <h1 class="line">Drop List</h1>
    <div class="section-contents">
         <div class="box box-white">
            <div class="drop-list">
                <div class="drop-item">Select One</div>
                <ul class="drop-options">
                    <li data-value="student">Student</li>
                    <li data-value="software-developer">Software Developer</li>
                    <li data-value="mechanical-engineer">Mechanical Engineer</li>
                    <li data-value="doctor">Doctor</li>
                </ul>
            </div>
        </div>

<pre class="code language-markup">
&lt;div class=&quot;drop-list&quot;&gt;
    &lt;div class=&quot;drop-item&quot;&gt;Select One&lt;/div&gt;
    &lt;ul class=&quot;drop-options&quot;&gt;
        &lt;li data-value=&quot;student&quot;&gt;Student&lt;/li&gt;
        &lt;li data-value=&quot;software-developer&quot;&gt;Software Developer&lt;/li&gt;
        &lt;li data-value=&quot;mechanical-engineer&quot;&gt;Mechanical Engineer&lt;/li&gt;
        &lt;li data-value=&quot;doctor&quot;&gt;Doctor&lt;/li&gt;
    &lt;/ul&gt;
&lt;/div&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-value</span></td>
                <td><span class="highlight">string</span></td>
                <td>The correspondent data value for the item's text.</td>
            </tr>
        </table>

        <table class="table-data">
            <tr>
                <td><span class="highlight">value_change( element, value )</span></td>
                <td>Triggered when an item is selected.</td>
            </tr>
        </table>
    </div>
</section>
