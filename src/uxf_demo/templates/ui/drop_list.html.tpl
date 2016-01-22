<section id="drop-list">
    <h1  class="line">Drop List</h1>
    <div class="section-contents">
         <div class="box box-white">
            <div class="drop-list">
                <div class="drop-item">Select One</div>
                <ul class="drop-options">
                    <li data-value="student">
                        <span>Student</span>
                    </li>
                    <li data-value="software-developer">
                        <span>Software Developer</span>
                    </li>
                    <li data-value="mechanical-engineer">
                        <span>Mechanical Engineer</span>
                    </li>
                    <li data-value="doctor">
                        <span>Doctor</span>
                    </li>
                </ul>
            </div>
        </div>

<pre class="code language-markup">
&lt;div class=&quot;drop-list&quot;&gt;
    &lt;div class=&quot;drop-item&quot;&gt;Select One&lt;/div&gt;
    &lt;ul class=&quot;drop-options&quot;&gt;
        &lt;li data-value=&quot;student&quot;&gt;
            &lt;span&gt;Student&lt;/span&gt;
        &lt;/li&gt;
        &lt;li data-value=&quot;software-developer&quot;&gt;
            &lt;span&gt;Software Developer&lt;/span&gt;
        &lt;/li&gt;
        &lt;li data-value=&quot;mechanical-engineer&quot;&gt;
            &lt;span&gt;Mechanical Engineer&lt;/span&gt;
        &lt;/li&gt;
        &lt;li data-value=&quot;doctor&quot;&gt;
            &lt;span&gt;Doctor&lt;/span&gt;
        &lt;/li&gt;
    &lt;/ul&gt;
&lt;/div&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-submit</span></td>
                <td><span class="highlight">boolean</span></td>
                <td>If the parent form of the drop field should be submitted upon action.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-duration</span></td>
                <td><span class="highlight">integer</span></td>
                <td>The duration for the scrolling effect in milliseconds. If set the link value in the item must be internal.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-offset</span></td>
                <td><span class="highlight">integer</span></td>
                <td>The offset to the target element in pixels, the value may be positive or negative.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-number_options</span></td>
                <td><span class="highlight">integer</span></td>
                <td>If set overrides the default number of options to be present per each load (set to minus one for infinite).</td>
            </tr>
        </table>

        <table class="table-data">
            <tr>
                <td><span class="highlight">value_change( element, value )</span></td>
                <td>Triggered when an item is selected.</td>
        </table>
    </div>
</section>
