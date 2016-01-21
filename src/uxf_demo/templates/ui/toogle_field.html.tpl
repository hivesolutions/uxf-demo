<section id="toogle-field">
    <h1 class="line">Toogle Field</h1>
    <div class="section-contents">
        <p>This component allows changing an input's mode. The button can be styled accordingly
        by using the <span class="highlight">.toggle-field .button.{mode_name}</span> selector.</p>
        <div class="box box-white">
            <input class="toggle-field toggle-left" data-modes="currency, percent"/>
        </div>

<pre class="code language-markup">
&lt;input class=&quot;toggle-field toggle-left&quot; data-modes=&quot;currency, percent&quot;/&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-modes</span></td>
                <td><span class="highlight">string</span></td>
                <td>The available modes for the input separated with a comma.</td>
            </tr>
        </table>

        <table class="table-data">
            <tr>
                <td><span class="highlight">mode_change( mode, index )</span></td>
                <td><span class="highlight">string</span></td>
                <td>Triggered when the input's mode changes.</td>
            </tr>
        </table>

    </div>
</section>
