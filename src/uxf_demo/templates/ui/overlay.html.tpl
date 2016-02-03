<section id="overlay">
    <h1 class="line">Overlay</h1>
    <div class="section-contents">

        <p>This component provides a togglable window level overlay (mask) to highlight other elements.</p>

<pre class="code language-markup">
&lt;div class=&quot;overlay&quot;&gt;&lt;/div&gt;
</pre>

<pre class="code language-javascript">
jQuery(&quot;.overlay&quot;).triggerHandler(&quot;toggle&quot;, [250]);
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
