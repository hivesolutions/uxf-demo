<section id="drop-down">
    <h1  class="line">Dropdown</h1>
    <div class="section-contents">
        <div class="box box-white">
            <ul class="drop-down drop-down-form" data-name="Select one">
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

<pre class="code language-markup">
&lt;ul class=&quot;drop-down drop-down-form&quot; data-name=&quot;Select one&quot;&gt;
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
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-name</span></td>
                <td><span class="highlight">string</span></td>
                <td>The correspondent data value for the item's text.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-input</span></td>
                <td><span class="highlight">string</span></td>
                <td>The name to be given to this component's input element.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-value</span></td>
                <td><span class="highlight">string</span></td>
                <td>The correspondent data value for the item's text.</td>
            </tr>
        </table>

        <table class="table-data">
            <tr>
                <td><span class="highlight">value_change( value, text )</span></td>
                <td>Triggered when an item is selected.</td>
            </tr>
        </table>
    </div>
</section>
