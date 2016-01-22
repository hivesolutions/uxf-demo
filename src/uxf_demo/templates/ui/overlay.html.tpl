<section id="overlay-panel">
    <h1 class="line">Overlay Panel</h1>
    <div class="section-contents">
        <p>This component provides a window level overlay that responds to a specific key press.
        The following example makes use of a <a href="#drop-field">Drop Field</a> to search the componentes on this page.</p>
        <div class="box box-white">
            <p>Press Ctrl + Enter key to trigger the overlay.</p>
        </div>
        
        <div class="overlay-panel overlay-search" data-key="13" data-offset="0.20">
            <h1>Overlay Content</h1>
        </div>

<pre class="code language-markup">
&lt;div id=&quot;panel&quot; class=&quot;overlay-panel overlay-search&quot; data-key=&quot;13&quot; data-offset=&quot;0.20&quot;&gt;
    &lt;h1&gt;Overlay Content&lt;/h1&gt;
&lt;/div&gt;
</pre>

        <table class="table-data">
            <tr>
                <td><span class="highlight">data-key</span></td>
                <td><span class="highlight">integer</span></td>
                <td>The integer of the key to trigger the overlay.</td>
            </tr>

            <tr>
                <td><span class="highlight">data-offset</span></td>
                <td><span class="highlight">float</span></td>
                <td>The vertical offset of the overlay.</td>
            </tr>
        </table>
    </div>
</section>
