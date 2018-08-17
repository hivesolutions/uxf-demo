<section id="side-panel-sec">
    <h1 class="line">Side Panel</h1>
    <div class="section-contents">

        <div class="box box-white">
            <a class="button" data-show=".side-panel">Show Side Panel</a>
        </div>

<pre class="code language-markup">
&lt;div class=&quot;side-panel&quot;&gt;
    &lt;p&gt;Content&lt;/p&gt;
    &lt;a class=&quot;button button-cancel&quot;&gt;Cancel&lt;/a&gt;
&lt;/div&gt;
</pre>

        <table class="table-data">

            <tr>
                <td><span class="highlight">data-side</span></td>
                <td><span class="highlight">string</span></td>
                <td>The side in which to place the side panel. Set to right by default.</td>
            </tr>
            <tr>
                <td><span class="highlight">data-timeout</span></td>
                <td><span class="highlight">integer</span></td>
                <td>The number of seconds to be used to display the side panel (animation time). Set to 350 by default.</td>
            </tr>
        </table>

        <table class="table-data">
            <tr>
                <td><span class="highlight">show( )</span></td>
                <td>Called when the panel is presented.</td>
            </tr>
            <tr>
                <td><span class="highlight">hide( )</span></td>
                <td>Called when the panel is dismissed</td>
            </tr>
        </table>

    </div>
</section>
