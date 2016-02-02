<section id="overlay">
    <h1 class="line">Overlay</h1>
    <div class="section-contents">
        <p>This component provides a togglable window level overlay with content.</p>
        <div class="overlay" id="overlay-element">
            <h1>Overlay Content</h1>
        </div>

<pre class="code language-markup">
&lt;div class=&quot;overlay&quot; id=&quot;overlay-element&quot;&gt;
    &lt;h1&gt;Overlay Content&lt;/h1&gt;
&lt;/div&gt;
</pre>

<pre class="code language-javascript">
jQuery(&quot;#overlay-element&quot;).triggerHandler(&quot;toggle&quot;, [250]);
</pre>
        <p>This component responds to the following events:</p>
        <table class="table-data">
            <tr>
                <td><span class="highlight">show( duration )</span></td>
                <td>Presents the overlay with a transition. The <span class="highlight">duration</span> parameter is the transition duration in milliseconds.</td>
            </tr>
            <tr>
                <td><span class="highlight">hide( duration )</span></td>
                <td>Dismisses the overlay.</td>
            </tr>
            <tr>
                <td><span class="highlight">toggle( duration )</span></td>
                <td>Shows/hides the overlay depending on its current state.</td>
            </tr>
            <tr>
                <td><span class="highlight">resize( )</span></td>
                <td>Resizes the overlay to fill the window.</td>
            </tr>
        </table>
    </div>
</section>
