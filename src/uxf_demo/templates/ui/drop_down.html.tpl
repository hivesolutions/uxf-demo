<section id="drop-down">
    <h1  class="line">Drop Down</h1>
    <div class="section-contents">

        <p>
            This component allows the user to select a value from several options.
            It can be used as a menu as when expanded it will trigger the <span class="highlight">hide</span>
            event on all active menus (with the selector <span class="highlight">.menu.active</span>).
            This also means that only one dropdown will be expanded at the same time.
        </p>

        <div class="box box-white">
            <ul class="drop-down drop-down-form" data-name="Select one">
                <li data-value="student">Student</li>
                <li data-value="software-developer">Software Developer</li>
                <li data-value="mechanical-engineer">Mechanical Engineer</li>
                <li data-value="doctor">Doctor</li>
            </ul>
        </div>

<pre class="code language-markup">
&lt;ul class=&quot;drop-down drop-down-form&quot; data-name=&quot;Select one&quot;&gt;
    &lt;li data-value=&quot;student&quot;&gt;Student&lt;/li&gt;
    &lt;li data-value=&quot;software-developer&quot;&gt;Software Developer&lt;/li&gt;
    &lt;li data-value=&quot;mechanical-engineer&quot;&gt;Mechanical Engineer&lt;/li&gt;
    &lt;li data-value=&quot;doctor&quot;&gt;Doctor&lt;/li&gt;
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
