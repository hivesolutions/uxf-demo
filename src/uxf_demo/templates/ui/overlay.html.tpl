<section id="overlay-sec">
    <h1 class="line">Overlay</h1>
    <div class="section-contents">

        <p>This component provides a togglable window level overlay (mask) to highlight other elements.</p>

<pre class="code language-markup">
&lt;div class=&quot;overlay&quot;&gt;&lt;/div&gt;
</pre>

<pre class="code language-javascript">
jQuery(&quot;.overlay:first&quot;).triggerHandler(&quot;toggle&quot;, [250]);
</pre>
        <table class="table-data">
            <tr>
                <td><span class="highlight">pre_show( )</span></td>
                <td>Triggered when the overlay receives the <span class="highlight">show</span> event but before it's fade in animation starts.</td>
            </tr>
            <tr>
                <td><span class="highlight">post_show( )</span></td>
                <td>Called when the overlay fade in animation starts.</td>
            </tr>
            <tr>
                <td><span class="highlight">after_show( )</span></td>
                <td>Called when the overlay fade in animation finishes.</td>
            </tr>
            <tr>
                <td><span class="highlight">pre_hide( )</span></td>
                <td>Triggered when the overlay receives the <span class="highlight">hide</span> event but before the fade out animation starts.</td>
            </tr>
            <tr>
                <td><span class="highlight">post_hide( )</span></td>
                <td>Called when the overlay fade out animation starts.</td>
            </tr>
            <tr>
                <td><span class="highlight">after_hide( )</span></td>
                <td>Called when the overlay fade out animation finishes.</td>
            </tr>
        </table>

        <p>This component responds to the following events:</p>

        <table class="table-data">
            <tr>
                <td><span class="highlight">show( duration, extra )</span></td>
                <td>Presents the overlay with a transition. The <span class="highlight">duration</span> parameter is the transition duration in milliseconds.  If <span class="highlight">extra</span> is specified then it will be added to the overlay as a class, allowing specific CSS rules.</td>
            </tr>
            <tr>
                <td><span class="highlight">hide( duration, extra )</span></td>
                <td>Dismisses the overlay and removes the <span class="highlight">extra</span> class.</td>
            </tr>
            <tr>
                <td><span class="highlight">toggle( duration, extra )</span></td>
                <td>Shows/hides the overlay depending on its current state. Adds the <span class="highlight">extra</span> class to the overlay if it is show operation and removes if it is being dismissed.</td>
            </tr>
            <tr>
                <td><span class="highlight">resize( )</span></td>
                <td>Resizes the overlay to fill the window.</td>
            </tr>
        </table>

    </div>
</section>
