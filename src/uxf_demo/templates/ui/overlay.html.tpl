<section id="overlay-panel">
    <h1 class="line">Overlay Panel</h1>
    <div class="section-contents">
        <p>This component provides a window level overlay that responds to a specific key press.
        The following example makes use of a <a href="#drop-field">Drop Field</a> to search the componentes on this page.</p>
        <div class="box box-white">
            Press Ctrl + Space key to trigger the overlay.
        </div>

<pre class="code language-markup">
&lt;div id=&quot;search&quot; class=&quot;overlay-panel overlay-search&quot; data-key=&quot;32&quot; data-offset=&quot;0.20&quot;&gt;
    &lt;div class=&quot;drop-field entities-search&quot; data-display_attribute=&quot;name&quot;
         data-value_attribute=&quot;name&quot; data-link_attribute=&quot;link&quot; data-filter_attributes=&quot;name&quot;
         data-duration=&quot;500&quot; data-offset=&quot;-42&quot;&gt;
        &lt;input type=&quot;text&quot; class=&quot;text-field&quot; autocomplete=&quot;off&quot; /&gt;
        &lt;li class=&quot;template&quot;&gt;
            &lt;div&gt;
                &lt;p class=&quot;entity-name&quot;&gt;%[name]&lt;/p&gt;
            &lt;/div&gt;
        &lt;/li&gt;
        &lt;ul class=&quot;data-source&quot; data-type=&quot;local&quot; data-insensitive=&quot;1&quot;&gt;&lt;/ul&gt;
    &lt;/div&gt;
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
